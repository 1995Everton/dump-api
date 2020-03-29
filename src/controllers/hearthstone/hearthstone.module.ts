import { Module, HttpModule } from '@nestjs/common';
import { 
    Card,
    Class,
    Faction,
    Locale,
    SetCard,
    Race,
    Rarity,
    Type ,
    Artist,
    Description
} from '../../models/hearthstone';
import { TypeOrmModule } from '@nestjs/typeorm';
import { HearthstoneController } from './hearthstone.controller';
import { HearthstoneService } from './hearthstone.service';

@Module({
    imports: [
        TypeOrmModule.forFeature([
            Card,
            Class,
            Faction,
            Locale,
            SetCard,
            Race,
            Rarity,
            Type ,
            Artist,
            Description
        ],'hearthstone'),
        HttpModule
    ],
    controllers: [
        HearthstoneController
    ],
    providers: [
        HearthstoneService
    ],
})
export class HearthstoneModule {}
