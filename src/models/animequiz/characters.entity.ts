import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  OneToMany,
  JoinTable,
  ManyToMany,
} from 'typeorm';
import {
  Photos,
  Titles,
  Team,
  Partner,
  Classification,
  Family,
  NatureType,
  KekkeiGenkai,
  Affiliation,
  Clan,
} from './';
import { Jutsu } from './jutsu.entity';

@Entity()
export class Characters {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({ nullable: false })
  name: string;

  @Column({ default: null })
  birthday: string;

  @OneToMany(
    () => Photos,
    photos => photos.id_character,
  )
  photos: Photos[];

  @OneToMany(
    () => Titles,
    titles => titles.id_character,
  )
  titles: Titles[];

  @ManyToMany(() => Classification)
  @JoinTable({
    name: 'character_classification',
    joinColumns: [{ name: 'id_character' }],
    inverseJoinColumns: [{ name: 'id_classification' }],
  })
  classification: Classification[];

  @ManyToMany(() => Team)
  @JoinTable({
    name: 'character_team',
    joinColumns: [{ name: 'id_character' }],
    inverseJoinColumns: [{ name: 'id_team' }],
  })
  team: Team[];

  @ManyToMany(() => Partner)
  @JoinTable({
    name: 'character_partner',
    joinColumns: [{ name: 'id_character' }],
    inverseJoinColumns: [{ name: 'id_partner' }],
  })
  partner: Partner[];

  @ManyToMany(() => Family)
  @JoinTable({
    name: 'character_family',
    joinColumns: [{ name: 'id_character' }],
    inverseJoinColumns: [{ name: 'id_family' }],
  })
  family: Family[];

  @ManyToMany(() => NatureType)
  @JoinTable({
    name: 'character_nature_type',
    joinColumns: [{ name: 'id_character' }],
    inverseJoinColumns: [{ name: 'id_nature_type' }],
  })
  nature_type: NatureType[];

  @ManyToMany(() => KekkeiGenkai)
  @JoinTable({
    name: 'character_kekkei_genkai',
    joinColumns: [{ name: 'id_character' }],
    inverseJoinColumns: [{ name: 'id_kekkei_genkai' }],
  })
  kekkei_genkai: KekkeiGenkai[];

  @ManyToMany(() => Affiliation)
  @JoinTable({
    name: 'character_affiliation',
    joinColumns: [{ name: 'id_character' }],
    inverseJoinColumns: [{ name: 'id_affiliation' }],
  })
  affiliation: Affiliation[];

  @ManyToMany(() => Clan)
  @JoinTable({
    name: 'character_clan',
    joinColumns: [{ name: 'id_character' }],
    inverseJoinColumns: [{ name: 'id_clan' }],
  })
  clan: Clan[];

  @OneToMany(
    () => Jutsu,
    jutsu => jutsu.id_character,
  )
  jutsu: Jutsu[];
}
