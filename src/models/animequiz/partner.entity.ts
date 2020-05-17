import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Partner {
  @PrimaryGeneratedColumn()
  id?: number;

  @Column({ unique: true, nullable: false })
  name: string;
}
