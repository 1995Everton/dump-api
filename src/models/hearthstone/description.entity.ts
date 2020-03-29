import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn } from 'typeorm';
import { Card } from './card.entity';
import { Locale } from './locale.entity';

 @Entity()
export class Description {

    @PrimaryGeneratedColumn()
    id: number;

    @Column({ nullable:false })
    name: string;

    @Column({ type: 'text', default : '' })
    text: string;

    @Column({ type: 'text', default : ''})
    flavor: string;

    @Column({ default: '' })
    img: string;

    @Column({ default: '' })
    img_gold: string;

    @ManyToOne(() => Card, card => card.description,{ nullable: false})
    @JoinColumn({name: "id_card"})
    id_card: Card

    @ManyToOne(() => Locale, locale => locale.description,{ nullable: false})
    @JoinColumn({name: "id_locale"})
    id_locale: Locale

}