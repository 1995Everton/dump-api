import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, getConnection } from 'typeorm';
import { Champion, ChampionDescription, Locale, Passive, PassiveDescription, Skins, Spells, SpellsDescription, Stats, Tags, SkinsDescription } from 'src/models/leagueoflegends';

@Injectable()
export class LeagueoflegendsService {

    constructor(
        @InjectRepository(Champion,'leagueoflegends')
        private championModel: Repository<Champion>,
        @InjectRepository(ChampionDescription,'leagueoflegends')
        private championDescriptionModel: Repository<ChampionDescription>,
        @InjectRepository(Locale,'leagueoflegends')
        private localeModel: Repository<Locale>,
        @InjectRepository(Passive,'leagueoflegends')
        private passiveModel: Repository<Passive>,
        @InjectRepository(PassiveDescription,'leagueoflegends')
        private passiveDescriptionModel: Repository<PassiveDescription>,
        @InjectRepository(Skins,'leagueoflegends')
        private skinsModel: Repository<Skins>,
        @InjectRepository(SkinsDescription,'leagueoflegends')
        private skinsDescriptionModel: Repository<SkinsDescription>,
        @InjectRepository(Spells,'leagueoflegends')
        private spellsModel: Repository<Spells>,
        @InjectRepository(SpellsDescription,'leagueoflegends')
        private spellsDescriptionModel: Repository<SpellsDescription>,
        @InjectRepository(Tags,'leagueoflegends')
        private tagsModel: Repository<Tags>,
        @InjectRepository(Stats,'leagueoflegends')
        private statsModel: Repository<Stats>
    ){}

    public async findByNameChampion(key : string): Promise<Champion>{
        return await this.championModel.findOne( { where: { key }})
    }

    public async findByKeyPassive(key: string): Promise<Passive>{
        return await this.passiveModel.findOne( { where : { key } } );
    }

    public async findByKeySkins(key: string): Promise<Skins>{
        return await this.skinsModel.findOne( { where : { key } } );
    }

    public async findByKeySpells(key: string): Promise<Spells>{
        return await this.spellsModel.findOne( { where : { key } } );
    }

    public async createChampion(value : Champion): Promise<Champion>{
        const result = await this.championModel.findOne({ where: { key : value.key }})
        if(!result){
            return await this.championModel.save(value);
        }
        return result;
        
    }

    public async createChampionDescription(value : ChampionDescription): Promise<ChampionDescription>{
        const result = await this.championDescriptionModel.findOne({ 
            where: {
                id_champion: value.id_champion,
                id_locale: value.id_locale
            }
        });
        if(!result){
            return await this.championDescriptionModel.save(value);
        }
        return result;
        
    }

    public async createLocale(value : string): Promise<Locale>{
        const result = await this.localeModel.findOne( { where : { name: value } } );
        if(!result){
            return await this.localeModel.save({ name: value });
        }
        return result;
    }

    public async createTags(value : string): Promise<Tags>{
        const result = await this.tagsModel.findOne( { where : { name: value } } );
        if(!result){
            return await this.tagsModel.save({ name: value });
        }
        return result;
    }

    public async createTagsChampion(champion: Champion, tags: Tags){
        const result = await getConnection()
            .getRepository(Champion)
            .createQueryBuilder("champion")
            .leftJoinAndSelect("champion.tags", "tags")
            .where("champion.id = :id_champion AND tags.id = :id_tags",{ 
                id_champion: champion.id,
                id_tags: tags.id
            })
            .getOne();
        if(!result){
            await getConnection()
            .createQueryBuilder()
            .relation(Champion,"tags")
            .of(champion)
            .add(tags);
        }
       
    }

    public async createPassive(value : Passive): Promise<Passive>{
        const result = await this.passiveModel.findOne( { where : { key: value.key } } );
        if(!result){
            return await this.passiveModel.save(value);
        }
        return result;
    }

    public async createPassiveDescription(value : PassiveDescription): Promise<PassiveDescription>{
        const result = await this.passiveDescriptionModel.findOne({ 
            where: {
                id_passive: value.id_passive,
                id_locale: value.id_locale
            }
        });
        if(!result){
            return await this.passiveDescriptionModel.save(value);
        }
        return result;
        
    }

    public async createSkins(value : Skins): Promise<Skins>{
        const result = await this.skinsModel.findOne( { where : { key: value.key } } );
        if(!result){
            return await this.skinsModel.save(value);
        }
        return result;
    }

    public async createSkinsDescription(value : SkinsDescription): Promise<SkinsDescription>{
        const result = await this.skinsDescriptionModel.findOne({ 
            where: {
                id_locale: value.id_locale,
                id_skins: value.id_skins
            }
        });
        if(!result){
            return await this.skinsDescriptionModel.save(value);
        }
        return result;
        
    }

    public async createStats(value : Stats): Promise<Stats>{
        const result = await this.statsModel.findOne( { where : { key: value.key } } );
        if(!result){
            return await this.statsModel.save(value);
        }
        return result;
    }

    public async createSpells(value : Spells): Promise<Spells>{
        const result = await this.spellsModel.findOne({where: { key: value.key }})
        if(!result){
            return await this.spellsModel.save(value);
        }
        return result;
        
    }

    public async createSpellsDescription(value : SpellsDescription): Promise<SpellsDescription>{
        const result = await this.spellsDescriptionModel.findOne({ 
            where: {
                id_locale: value.id_locale,
                id_spells: value.id_spells
            }
        });
        if(!result){
            return await this.spellsDescriptionModel.save(value);
        }
        return result;
        
    }
}
