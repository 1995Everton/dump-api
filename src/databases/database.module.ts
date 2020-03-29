import { Module, DynamicModule } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm'
import * as ornconfig from "../ormconfig"

const ormconfigs : DynamicModule[] = []

for (const config of ornconfig) {
    ormconfigs.push(TypeOrmModule.forRoot(config))
}

@Module({
    imports: [...ormconfigs]
})
export class DatabaseModule {}
