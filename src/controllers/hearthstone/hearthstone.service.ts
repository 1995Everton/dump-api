import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Card, Class, Faction, Locale, Race, Rarity, SetCard, Type, Artist, Description } from 'src/models/hearthstone';

@Injectable()
export class HearthstoneService {
    
    constructor(
        @InjectRepository(Card,'hearthstone')
        private cardModel: Repository<Card>,
        @InjectRepository(Description,'hearthstone')
        private descriptionModel: Repository<Description>,
        @InjectRepository(Class,'hearthstone')
        private classModel: Repository<Class>,
        @InjectRepository(Artist,'hearthstone')
        private artistModel: Repository<Artist>,
        @InjectRepository(Faction,'hearthstone')
        private factionModel: Repository<Faction>,
        @InjectRepository(Locale,'hearthstone')
        private localeModel: Repository<Locale>,
        @InjectRepository(Race,'hearthstone')
        private raceModel: Repository<Race>,
        @InjectRepository(Rarity,'hearthstone')
        private rarityModel: Repository<Rarity>,
        @InjectRepository(SetCard,'hearthstone')
        private setCardModel: Repository<SetCard>,
        @InjectRepository(Type,'hearthstone')
        private typeModel: Repository<Type>,
    ) {}

    async teste(){
        return await  this.cardModel.find();
    }

    async findByIdCard(id_card: string): Promise<Card> {
        return await this.cardModel.findOne({ where: { id_card }});
    }
    
    async findAllCard(): Promise<Card[]> {
        return await this.cardModel.find();
    }

    async create(data: Card) : Promise<Card>{
        return await this.cardModel.save(data);
    }

    async createDescription(data: Description) {
        await this.descriptionModel.save(data);
    }

    async createClass(name: string): Promise<Class> {
        const value = await this.classModel.findOne({ name })
        if(!value){
            return await this.classModel.save({ name });
        }
        return value;
    }

    async createArtist(name: string): Promise<Artist> {
        const artist = await this.artistModel.findOne({ name })
        if(!artist){
            return await this.artistModel.save({ name });
        }
        return artist;
    }

    async createFaction(name: string): Promise<Faction> {
        const faction = await this.factionModel.findOne({ name })
        if(!faction){
            return await this.factionModel.save({ name });
        }
        return faction;
    }

    async createLocale(name: string): Promise<Locale> {
        const value = await this.localeModel.findOne({ name })
        if(!value){
            return await this.localeModel.save({ name });
        }
        return value;
    }

    async createRace(name: string): Promise<Race> {
        const value = await this.raceModel.findOne({ name })
        if(!value){
            return await this.raceModel.save({ name });
        }
        return value;
    }

    async createRarity(name: string): Promise<Rarity> {
        const value = await this.rarityModel.findOne({ name })
        if(!value){
            return await this.rarityModel.save({ name });
        }
        return value;
    }

    async createSetCard(name: string): Promise<SetCard> {
        const value = await this.setCardModel.findOne({ name })
        if(!value){
            return await this.setCardModel.save({ name });
        }
        return value;
    }

    async createType(name: string): Promise<Type> {
        const value = await this.typeModel.findOne({ name })
        if(!value){
            return await this.typeModel.save({ name });
        }
        return value;
    }
}
