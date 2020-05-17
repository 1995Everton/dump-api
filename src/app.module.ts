import { Module } from '@nestjs/common';
import { AnimeQuizModule } from './controllers/animequiz/animequiz.module';
import { DatabaseModule } from './databases/database.module';
import { LeagueoflegendsModule } from './controllers/leagueoflegends/leagueoflegends.module';
import { HearthstoneModule } from './controllers/hearthstone/hearthstone.module';
import { AppController } from './app.controller';
import { AppService } from './app.service';

@Module({
  imports: [
    DatabaseModule,
    LeagueoflegendsModule,
    HearthstoneModule,
    AnimeQuizModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
