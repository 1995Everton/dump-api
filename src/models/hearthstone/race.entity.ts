import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from 'typeorm';
import { Card } from './card.entity';

@Entity()
export class Race {

    @PrimaryGeneratedColumn()
    id: number;

    @Column({ nullable:false })
    name: string;

    @OneToMany(() => Card, card => card.id_race)
    cards: Card[];

}