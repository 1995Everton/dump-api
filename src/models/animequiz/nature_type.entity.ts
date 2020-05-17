import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class NatureType {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ unique: true, nullable: false })
  name: string;
}
