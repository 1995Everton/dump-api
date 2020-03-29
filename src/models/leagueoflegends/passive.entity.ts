import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from 'typeorm';
import { PassiveDescription } from './passive_description.entity';

@Entity()
export class Passive {

    @PrimaryGeneratedColumn()
    id: number;
    
    @Column({ nullable:false })
    key: string;

    @Column({ default: '' })
    icon: string;

    @OneToMany(() => PassiveDescription, passive_description => passive_description.id_passive)
    passive_description: PassiveDescription[]

}