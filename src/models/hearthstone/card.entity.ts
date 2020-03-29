import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn, OneToMany } from 'typeorm';
import { Artist } from './artist.entity';
import { 
    SetCard, 
    Type,
    Faction, 
    Rarity, 
    Race,
    Class,
    Description
 } from './';




@Entity()
export class Card {

    @PrimaryGeneratedColumn()
    id: number;
  
    @Column({
        unique: true,
        nullable:false
    })
    id_card: string;

    @Column({ default: 0 })
    cost: number;

    @Column({ default: 0 })
    attack: number;

    @Column({ default: 0 })
    health: number;
  
    @Column({ default: true })
    collectible: boolean;

    @Column({ default: false })
    elite: boolean;

    @OneToMany(() => Description, description => description.id_card)
    description: Description[];

    @ManyToOne(() => SetCard, set => set.cards,{ nullable: false})
    @JoinColumn({name: "id_set_card"})
    id_set_card: SetCard

    @ManyToOne(() => Type, type => type.cards,{ nullable: false})
    @JoinColumn({name: "id_type"})
    id_type: Type

    @ManyToOne(() => Faction, faction => faction.cards,{ nullable: false})
    @JoinColumn({name: "id_faction"})
    id_faction: Faction

    @ManyToOne(() => Rarity, rarity => rarity.cards,{ nullable: false})
    @JoinColumn({name: "id_rarity"})
    id_rarity: Rarity

    @ManyToOne(() => Race, race => race.cards,{ nullable: false})
    @JoinColumn({name: "id_race"})
    id_race: Race

    @ManyToOne(() => Class, Class => Class.cards,{ nullable: false})
    @JoinColumn({name: "id_class"})
    id_class: Class

    @ManyToOne(() => Artist, artist => artist.cards,{ nullable: false})
    @JoinColumn({name: "id_artist"})
    id_artist: Artist

  
}