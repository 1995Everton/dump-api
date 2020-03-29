import { LeagueoflegendsService } from './leagueoflegends.service';
import { LeagueoflegendsController } from './leagueoflegends.controller';
import { Module, HttpModule } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { 
    Champion,
    ChampionDescription,
    Skins,
    Spells,
    SpellsDescription,
    Stats,
    Tags,
    Locale,
    Passive,
    PassiveDescription,
    SkinsDescription
} from 'src/models/leagueoflegends';

@Module({
    imports: [
        TypeOrmModule.forFeature([
            Champion,
            ChampionDescription,
            Skins,
            Spells,
            SpellsDescription,
            Stats,
            Tags,
            Locale,
            Passive,
            PassiveDescription,
            SkinsDescription
        ], 'leagueoflegends'),
        HttpModule.register({
            timeout: 5000,
        })
    ],
    controllers: [
        LeagueoflegendsController
    ],
    providers: [
        LeagueoflegendsService
    ],
})
export class LeagueoflegendsModule {}
