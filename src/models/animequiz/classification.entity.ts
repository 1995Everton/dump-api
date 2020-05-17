import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Classification {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ unique: true, nullable: false })
  name: string;
}
