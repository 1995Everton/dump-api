import { Module, HttpModule } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Naruto } from 'anime-info';
import { AnimeQuizController } from './animequiz.controller';
import { AnimeQuizService } from './animequiz.service';
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

@Module({
  imports: [
    TypeOrmModule.forFeature(
      [
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
      ],
      'animequiz',
    ),
    HttpModule,
  ],
  controllers: [AnimeQuizController],
  providers: [AnimeQuizService, Naruto],
})
export class AnimeQuizModule {}
