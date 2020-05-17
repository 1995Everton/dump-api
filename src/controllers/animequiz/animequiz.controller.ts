import { Controller, Get } from '@nestjs/common';
import { Naruto } from 'anime-info';
import { AnimeQuizService } from './animequiz.service';
import { NarutoInfo } from 'anime-info/dist/naruto/models';
import { Characters } from 'src/models/animequiz';

@Controller('animequiz')
export class AnimeQuizController {
  constructor(private animeService: AnimeQuizService, private anime: Naruto) {}

  @Get()
  async index() {
    const start = Date.now();
    const names = this.anime.getListCharacters();
    for (const name of names) {
      try {
        const character = await this.anime.getCharacter(name);
        this.create(character);
      } catch (error) {
        console.log(name);
      }
    }
    return {
      status: true,
      time: `${Date.now() - start}ms`,
      message: 'database animequiz successfully populated',
    };
  }

  private async create(character: NarutoInfo) {
    const {
      affiliation,
      birthday,
      clan,
      classification,
      family,
      jutsu,
      kekkei_genkai,
      name,
      nature_type,
      partner,
      photo,
      team,
      titles,
    } = character;

    const data_character = {
      name,
      birthday,
    } as Characters;

    const id_character = await this.animeService.createCharacters(
      data_character,
    );

    affiliation.forEach(({ name }) =>
      this.animeService.createAffiliation({ name }, id_character),
    );

    clan.forEach(({ name }) =>
      this.animeService.createClan({ name }, id_character),
    );

    classification.forEach(name =>
      this.animeService.createClassification({ name }, id_character),
    );

    family.forEach(name =>
      this.animeService.createFamily({ name }, id_character),
    );

    jutsu.forEach(value =>
      this.animeService.createJutsu({
        name: typeof value == 'string' ? value : value.name,
        id_character,
      }),
    );

    kekkei_genkai.forEach(({ name }) =>
      this.animeService.createKekkeiGenkai({ name }, id_character),
    );

    nature_type.forEach(({ name }) =>
      this.animeService.createNatureType({ name }, id_character),
    );

    partner.forEach(name =>
      this.animeService.createPartner({ name }, id_character),
    );

    photo.forEach(({ name, icon: photo }) =>
      this.animeService.createPhotos({
        name,
        photo,
        id_character,
      }),
    );

    team.forEach(name => this.animeService.createTeam({ name }, id_character));

    titles.forEach(name =>
      this.animeService.createTitles({
        name,
        id_character,
      }),
    );
  }
}
