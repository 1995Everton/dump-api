import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Affiliation {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ unique: true, nullable: false })
  name: string;
}
