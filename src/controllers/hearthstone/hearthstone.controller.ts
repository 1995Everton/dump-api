/* eslint-disable @typescript-eslint/no-unused-vars */
import { Controller, Get, HttpService } from '@nestjs/common';
import { map } from 'rxjs/operators';
import { HearthstoneService } from './hearthstone.service';
import { Hearthstone } from './hearthstone';
import { Card, Description } from 'src/models/hearthstone';

const headers = {
    "x-rapidapi-host": "omgvamp-hearthstone-v1.p.rapidapi.com",
	"x-rapidapi-key": "1adcfbd143mshd1b9a087694269bp175af8jsn77495c390624"
}

const locales = [
    "deDE",
    "enGB",
    "enUS",
    "esES",
    "esMX",
    "frFR",
    "itIT",
    "koKR",
    "plPL",
    "ptBR",
    "ruRU",
    "zhCN",
    "zhTW"
]

type FunctionType = (hearthstoneCards: Hearthstone[], lang: string) => Promise<boolean>;

@Controller('hearthstone')
export class HearthstoneController {
    
    constructor(
        private cardService: HearthstoneService,
        private httpService: HttpService
    ){}

    @Get('teste')
    async teste(){
        return await this.cardService.teste();
    }

    @Get()
    async index(){
        const start = Date.now();

        await this.callCard('enUS',this.create);

        const promise : Promise<boolean>[] = [];

        for (const locale of locales) {
            promise.push(this.callCard(locale,this.createAllLocales))
        }

        const result = await Promise.all(promise)
      
        return { 
            status: true,
            time : `${Date.now() - start}ms`,
            message: 'database hearthstone successfully populated'
        };
      
    }

     callCard = async(lang: string , callback: FunctionType) => {
        const all = await this.httpService
            .get('https://omgvamp-hearthstone-v1.p.rapidapi.com/cards',{ 
                params: {
                    locale: lang
                },
                headers 
            })
            .pipe( map(response => response.data))
            .toPromise();

        const hearthstoneCards: Hearthstone[] = [];

        for (const key of Object.keys(all)) {
            hearthstoneCards.push(...all[key]);
        }
        
        return callback(hearthstoneCards,lang)
    }

    create = async (hearthstoneCards: Hearthstone[],lang: string) => {
        for (const card of hearthstoneCards) {
            const { 
                artist = 'Unknown',
                faction = 'No Faction',
                playerClass = 'Neutral',
                cardSet = 'Basic',
                rarity = 'Free',
                race = 'Neutral',
                locale = '',
                type = 'No Type',
                // Lixo
                // eslint-disable-next-line @typescript-eslint/no-unused-vars
                dbfId,
                // Renomear
                cardId : id_card,
                imgGold : img_gold = '',
                // Description
                flavor = '',
                name,
                text = '',
                img = '',
                ...rest
            } = card;

            const data = {
                id_card,
                id_artist : await this.cardService.createArtist(artist),
                id_class : await this.cardService.createClass(playerClass),
                id_faction : await this.cardService.createFaction(faction),
                id_race : await this.cardService.createRace(race),
                id_rarity: await this.cardService.createRarity(rarity),
                id_set_card: await this.cardService.createSetCard(cardSet),
                id_type : await this.cardService.createType(type),
                ...rest,
            } as Card;

            const card_target = await this.cardService.findByIdCard(id_card);

            if(!card_target){
                await this.cardService.create(data);
            }

            

        }  
        return true;
    }

    createAllLocales = async  (hearthstoneCards: Hearthstone[],lang: string): Promise<boolean> => {

        for (const card of hearthstoneCards) {
            const { 
                locale = lang,
                cardId : id_card,
                imgGold : img_gold = '',
                flavor = '',
                name,
                text = '',
                img = '',
            } = card;

            const card_target = await this.cardService.findByIdCard(id_card);

            if(card_target){
                const data = {
                    name,
                    text,
                    flavor,
                    img,
                    img_gold,
                    id_locale: await this.cardService.createLocale(locale),
                    id_card: card_target
                } as Description;

                this.cardService.createDescription(data);
            }

        }  
        return true;
    }

}
