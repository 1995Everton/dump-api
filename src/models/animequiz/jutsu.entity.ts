import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  JoinColumn,
  ManyToOne,
} from 'typeorm';
import { Characters } from './characters.entity';

@Entity()
export class Jutsu {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ nullable: false })
  name: string;

  @ManyToOne(
    () => Characters,
    characters => characters.jutsu,
    { nullable: false },
  )
  @JoinColumn({ name: 'id_character' })
  id_character: Characters;
}
