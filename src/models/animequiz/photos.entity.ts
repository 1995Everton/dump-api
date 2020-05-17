import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  JoinColumn,
  ManyToOne,
} from 'typeorm';
import { Characters } from './characters.entity';

@Entity()
export class Photos {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ nullable: false })
  name: string;

  @Column({ nullable: false })
  photo: string;

  @ManyToOne(
    () => Characters,
    characters => characters.photos,
    { nullable: false },
  )
  @JoinColumn({ name: 'id_character' })
  id_character: Characters;
}
