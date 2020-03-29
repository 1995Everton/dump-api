import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from 'typeorm';
import { Card } from './card.entity';

@Entity()
export class Type {

    @PrimaryGeneratedColumn()
    id: number;

    @Column({ nullable:false })
    name: string;

    @OneToMany(() => Card, card => card.id_type)
    cards: Card[];

}