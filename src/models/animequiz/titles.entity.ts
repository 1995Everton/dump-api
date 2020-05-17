import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  JoinColumn,
  ManyToOne,
} from 'typeorm';
import { Characters } from './characters.entity';

@Entity()
export class Titles {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ nullable: false })
  name: string;

  @ManyToOne(
    () => Characters,
    characters => characters.titles,
    { nullable: false },
  )
  @JoinColumn({ name: 'id_character' })
  id_character: Characters;
}
