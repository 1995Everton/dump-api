import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from 'typeorm';
import { Description } from './description.entity';

@Entity()
export class Locale {

    @PrimaryGeneratedColumn()
    id: number;

    @Column({ nullable:false })
    name: string;

    @OneToMany(() => Description, description => description.id_locale)
    description: Description[];

}