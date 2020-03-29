import { ConnectionOptions } from 'typeorm';
import * as dotenv from 'dotenv';

dotenv.config();

const config: ConnectionOptions[]  = [
  {
    type: process.env.DATABASE_TYPE as 'mysql',
    name: "hearthstone",
    host: process.env.DATABASE_HOST,
    username: process.env.DATABASE_USERNAME,
    port: parseInt(process.env.DATABASE_PORT), 
    password: process.env.DATABASE_PASSWORD,
    database: "hearthstone",
    entities: ["dist/models/hearthstone/*.entity{.ts,.js}"],
    synchronize: true,
    extra: {
      charset: "utf8mb4_unicode_ci"
    },
    // logging: ["query", "error"]
  },
  {
    type: process.env.DATABASE_TYPE as 'mysql',
    name: "leagueoflegends",
    username: process.env.DATABASE_USERNAME,
    port: parseInt(process.env.DATABASE_PORT), 
    host: process.env.DATABASE_HOST,
    password: process.env.DATABASE_PASSWORD,
    database: "leagueoflegends",
    entities: ["dist/models/leagueoflegends/*.entity{.ts,.js}"],
    synchronize: true,
    extra: {
      charset: "utf8mb4_unicode_ci"
    },
    // logging: ["query", "error"]
  }
];

export = config;