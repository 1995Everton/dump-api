import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Family {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ unique: true, nullable: false })
  name: string;
}
