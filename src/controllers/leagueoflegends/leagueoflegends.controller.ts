import { Controller, HttpService, Get } from '@nestjs/common';
import { LeagueoflegendsService } from './leagueoflegends.service';
import { map } from 'rxjs/operators';
import { LeagueOfLegends } from './leagueoflegends';
import { Champion, Passive, Stats, Skins, Spells, ChampionDescription, PassiveDescription, SkinsDescription, SpellsDescription } from 'src/models/leagueoflegends';

interface Status {
    status: boolean;
    lang: string;
    name: string;
};

@Controller('leagueoflegends')
export class LeagueoflegendsController {

    private BASE_URL = 'https://ddragon.leagueoflegends.com';

    private ICON_URL = 'http://ddragon.leagueoflegends.com/cdn/VERSION/img/champion';

    private ICON_PASSIVE_URL = 'http://ddragon.leagueoflegends.com/cdn/VERSION/img/passive';

    private ICON_SPELL_URL = 'http://ddragon.leagueoflegends.com/cdn/VERSION/img/spell';

    private SKIN_LOADING_URL = 'http://ddragon.leagueoflegends.com/cdn/img/champion/loading';

    private SKIN_SPLASH_URL = 'http://ddragon.leagueoflegends.com/cdn/img/champion/splash';
    
    private version: string;


    constructor(
        private leagueoflegendsService: LeagueoflegendsService,
        private httpService: HttpService
    ){}

    @Get()
    async index(){
        const start = Date.now();
        this.version = await this.getLatestVersion();
        this.setImagesVersion();
        const languages = await this.getLanguages(); 
        const champions = await this.getChampions(this.version);
        for (const champion of champions) {
            await this.getChampionData(this.version,"en_US",champion,this.createChampion)
        }
        const status: Status[] = [];
        for (const language of languages) {
            for (const champion of champions) {
                status.push(await this.getChampionData(this.version,language,champion,this.createLocaleChampion));
            }
        }
        return { 
            status: true,
            time : `${Date.now() - start}ms`,
            message: 'database leagueoflegends successfully populated'
        };
    }

    private setImagesVersion(){
        this.ICON_URL = this.ICON_URL.replace('VERSION',this.version);
        this.ICON_PASSIVE_URL = this.ICON_PASSIVE_URL.replace('VERSION',this.version);
        this.ICON_SPELL_URL = this.ICON_SPELL_URL.replace('VERSION',this.version);
    }

    private async getLatestVersion(): Promise<string>{
        const versions = await this.httpService.get<string[]>(`${this.BASE_URL}/api/versions.json`)
            .pipe( map( response => response.data))
            .toPromise();
        return versions[0];
    }

    private async getLanguages(): Promise<string[]>{
        const languages = await this.httpService.get<string[]>(`${this.BASE_URL}/cdn/languages.json`)
            .pipe( map( response => response.data))
            .toPromise();
        return languages;
    }

    private async getChampions(version: string): Promise<string[]> {
        const all = await this.httpService
            .get(`${this.BASE_URL}/cdn/${version}/data/en_US/champion.json`)
            .pipe( map( response => response.data.data))
            .toPromise();
        const champions: string[] = [];
        for (const key of Object.keys(all)) {
            const { id } = all[key]
            champions.push(id)
        }
        return champions;
    }

    private async getChampionData(version: string, lang: string, name: string, callback: Function): Promise<Status>{
        let status = false;
        try {
            const champion = await this.httpService
                .get(`${this.BASE_URL}/cdn/${version}/data/${lang}/champion/${name}.json`)
                .pipe( map( response => response.data.data))
                .toPromise();
            callback(champion[name], lang);
            status = true;
        } catch (error) {}
        return { status, lang ,name};
    }

    private createChampion = async (champion: LeagueOfLegends) => {
        const {
            // Data
            id,
            image,
            info,
            passive,
            skins,
            spells,
            stats,
            tags,
            key,
            name
        } = champion;

        const data_passive = {
            key: id,
            icon: `${this.ICON_PASSIVE_URL}/${passive.image.full}`
        } as Passive;

        const data_stats = {
            key: id,
            ...stats
        } as Stats;

        const data = {
            name,
            key,
            icon : `${this.ICON_URL}/${image.full}`,
            id_passive : await this.leagueoflegendsService.createPassive(data_passive),
            id_stats: await this.leagueoflegendsService.createStats(data_stats),
            ...info
        } as Champion;

        const id_champion = await this.leagueoflegendsService.createChampion(data);
   
        for (const skin of skins) {
            const { id, num, chromas } = skin
            const data = {
                key: id,
                chromas,
                num,
                loading: `${this.SKIN_LOADING_URL}/${name}_${num}.jpg`,
                splash: `${this.SKIN_SPLASH_URL}/${name}_${num}.jpg`,
                id_champion
            } as Skins;
            await this.leagueoflegendsService.createSkins(data)
        }

        for (const spell of spells) {
            const { 
                id,
                cooldownBurn,
                costBurn,
                image,
                rangeBurn,
                maxrank
            } = spell;

            const data = {
                key:id,
                cooldown: cooldownBurn,
                cost: costBurn,
                maxrank,
                range: rangeBurn,
                icon: `${this.ICON_SPELL_URL}/${image.full}`,
                id_champion
            } as Spells;

            await this.leagueoflegendsService.createSpells(data)
        }

        for (const tag of tags) {
            const id_tags = await this.leagueoflegendsService.createTags(tag);
            this.leagueoflegendsService.createTagsChampion(id_champion,id_tags);
        }

        return true;
    }

    private createLocaleChampion = async (champion: LeagueOfLegends, lang: string) => {
        const {
            //Search
            key,
            id,
            // ChampionDescription
            title,
            lore,
            blurb,
            allytips,
            enemytips,
            partype,
            // OtherDescription
            passive,
            skins,
            spells,
        } = champion;

        const id_champion = await this.leagueoflegendsService.findByNameChampion(key);
        const id_locale = await this.leagueoflegendsService.createLocale(lang);

        const data = {
            title,
            lore,
            allytips: allytips.join("|"),
            blurb,
            enemytips: enemytips.join("|"),
            partype,
            id_champion,
            id_locale
        } as ChampionDescription;

        await this.leagueoflegendsService.createChampionDescription(data);

        const id_passive = await this.leagueoflegendsService.findByKeyPassive(id);

        const data_passive_description = {
            name: passive.name,
            description: passive.description,
            id_locale,
            id_passive
        } as PassiveDescription;

        await this.leagueoflegendsService.createPassiveDescription(data_passive_description);

        for (const skin of skins) {
            const { name, id } = skin;
            const id_skins = await this.leagueoflegendsService.findByKeySkins(id);
            const data = {
                name,
                id_locale,
                id_skins
            } as SkinsDescription;
            await this.leagueoflegendsService.createSkinsDescription(data);
        }

        for (const spell of spells) {
            const { description, name,tooltip,id } = spell;
            const id_spells = await this.leagueoflegendsService.findByKeySpells(id);
            const data = {
                name,
                description,
                tooltip,
                id_locale,
                id_spells
            } as SpellsDescription;

            await this.leagueoflegendsService.createSpellsDescription(data);
        }

        return champion;
    }

}
