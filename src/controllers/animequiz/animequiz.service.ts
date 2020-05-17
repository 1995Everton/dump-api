import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository, getConnection } from 'typeorm';
import {
  Affiliation,
  Characters,
  Clan,
  Classification,
  Family,
  Jutsu,
  KekkeiGenkai,
  NatureType,
  Partner,
  Photos,
  Team,
  Titles,
} from 'src/models/animequiz';

@Injectable()
export class AnimeQuizService {
  constructor(
    @InjectRepository(Affiliation, 'animequiz')
    private affiliationModel: Repository<Affiliation>,
    @InjectRepository(Characters, 'animequiz')
    private charactersModel: Repository<Characters>,
    @InjectRepository(Clan, 'animequiz')
    private clanModel: Repository<Clan>,
    @InjectRepository(Classification, 'animequiz')
    private classificationModel: Repository<Classification>,
    @InjectRepository(Family, 'animequiz')
    private familyModel: Repository<Family>,
    @InjectRepository(Jutsu, 'animequiz')
    private jutsuModel: Repository<Jutsu>,
    @InjectRepository(KekkeiGenkai, 'animequiz')
    private kekkeiGenkaiModel: Repository<KekkeiGenkai>,
    @InjectRepository(NatureType, 'animequiz')
    private natureTypeModel: Repository<NatureType>,
    @InjectRepository(Partner, 'animequiz')
    private partnerModel: Repository<Partner>,
    @InjectRepository(Photos, 'animequiz')
    private photosModel: Repository<Photos>,
    @InjectRepository(Team, 'animequiz')
    private teamModel: Repository<Team>,
    @InjectRepository(Titles, 'animequiz')
    private titlesModel: Repository<Titles>,
  ) {}

  private async create<M>(value: any, model: Repository<M>): Promise<M> {
    const result = await model.findOne({
      where: {
        id_character: value.id_character,
        name: value.name,
      },
    });
    if (!result) {
      return await model.save(value);
    }
    return result;
  }

  private async createName<M>(value: any, model: Repository<M>): Promise<M> {
    const result = await model.findOne({
      where: {
        name: value.name,
      },
    });
    if (!result) {
      return await model.save(value);
    }
    return result;
  }

  public async createManyToMany(
    character: Characters,
    model: any,
    relation: string,
  ) {
    const result = await getConnection('animequiz')
      .getRepository(Characters)
      .createQueryBuilder('characters')
      .leftJoinAndSelect(`characters.${relation}`, relation)
      .where(
        `characters.id = :id_characters AND ${relation}.id = :${relation}`,
        {
          id_characters: character.id,
          [relation]: model.id,
        },
      )
      .getOne();
    if (!result) {
      await getConnection('animequiz')
        .createQueryBuilder()
        .relation(Characters, relation)
        .of(character)
        .add(model);
    }
  }

  public async createAffiliation(
    value: Affiliation,
    characters: Characters,
  ): Promise<Affiliation> {
    const affiliation = await this.createName(value, this.affiliationModel);
    this.createManyToMany(characters, affiliation, 'affiliation');
    return affiliation;
  }

  public async createCharacters(value: Characters): Promise<Characters> {
    const result = await this.charactersModel.findOne({
      where: {
        name: value.name,
      },
    });
    if (!result) {
      return await this.charactersModel.save(value);
    }
    return result;
  }

  public async createClan(value: Clan, characters: Characters): Promise<Clan> {
    const clan = await this.createName(value, this.clanModel);
    this.createManyToMany(characters, clan, 'clan');
    return clan;
  }

  public async createClassification(
    value: Classification,
    characters: Characters,
  ): Promise<Classification> {
    const classification = await this.createName(
      value,
      this.classificationModel,
    );
    this.createManyToMany(characters, classification, 'classification');
    return classification;
  }

  public async createFamily(
    value: Family,
    characters: Characters,
  ): Promise<Family> {
    const family = await this.createName(value, this.familyModel);
    this.createManyToMany(characters, family, 'family');
    return family;
  }

  public async createJutsu(value: Jutsu): Promise<Jutsu> {
    return await this.create(value, this.jutsuModel);
  }

  public async createKekkeiGenkai(
    value: KekkeiGenkai,
    characters: Characters,
  ): Promise<KekkeiGenkai> {
    const kekkeiGenkai = await this.createName(value, this.kekkeiGenkaiModel);
    this.createManyToMany(characters, kekkeiGenkai, 'kekkei_genkai');
    return kekkeiGenkai;
  }

  public async createNatureType(
    value: NatureType,
    characters: Characters,
  ): Promise<NatureType> {
    const nature_type = await this.createName(value, this.natureTypeModel);
    this.createManyToMany(characters, nature_type, 'nature_type');
    return nature_type;
  }

  public async createPartner(
    value: Partner,
    characters: Characters,
  ): Promise<Partner> {
    const partner = await this.createName(value, this.partnerModel);
    this.createManyToMany(characters, partner, 'partner');
    return partner;
  }

  public async createPhotos(value: Photos): Promise<Photos> {
    return await this.create(value, this.photosModel);
  }

  public async createTeam(value: Team, characters: Characters): Promise<Team> {
    const team = await this.createName(value, this.teamModel);
    this.createManyToMany(characters, team, 'team');
    return team;
  }

  public async createTitles(value: Titles): Promise<Titles> {
    return await this.create(value, this.titlesModel);
  }
}
