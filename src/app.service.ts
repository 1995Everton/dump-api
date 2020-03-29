import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(){
    return {
      status: true,
      message: 'Welcome to dump-api 👋'
    };
  }
}
