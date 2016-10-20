# Docker demo for takaojs 1607

[![](https://images.microbadger.com/badges/image/chusiang/takaojs1607.svg)](https://microbadger.com/images/chusiang/takaojs1607 "Get your own image badge on microbadger.com")

This is a docker demo for takaojs meetup at 2016/07/04.

* OS: Ubuntu 15.04
* node: 5.12.0
* npm: 3.8.6
* python: 2.7.11
* selenium: 2.53.0

## Docker Container

Published to the public [Docker Hub](https://hub.docker.com/) via **automated build** mechanism and fork from [selenium/node-chrome-debug2.48.2](https://hub.docker.com/r/selenium/node-chrome-debug/).

> Docker Hub: [chusiang/takaojs1607](https://hub.docker.com/r/chusiang/takaojs1607/)

### Images

* chusiang/takaojs1607 (lastest)

### Usage

1. Get docker image.

        $ docker pull chusiang/takaojs1607
    
2. Get vnc port (5900 port on guest os).
    
        $ docker port $(docker run --name e2e -d -P chusiang/takaojs1607) 5900
        0.0.0.0:32820

3. Remote with VNC client.

        # on macOS.
        $ open vnc://:secret@127.0.0.1:32820
    
    
### e2e test with angular-seed

1. Enter e2e container.

        $ docker exec -it e2e bash
    
2. Switch user.
    
        root@9ecd32e05262:/# su - seluser

3. Get angular-seed repo with git.

        seluser@9ecd32e05262:~$ git clone https://github.com/angular/angular-seed.git && cd angular-seed

4. Install npm packages.

        $ npm install

5. Start server.

        $ npm run start &

6. Run e2e test.

        $ npm run protractor
    
## Reference

* [前端工程師一定要知道的 Docker 虛擬化容器技巧 | 凍仁的筆記](http://note.drx.tw/2016/07/virtualization-with-docker-container-basic-for-f2e.html)
* [前端工程師一定要知道的 Docker 虛擬化容器技巧 (18:34) | YouTube](https://youtu.be/k5iwKUZY9tk)
* [angular-seed e2e tests demo on Docker (2:52) | YouTube](https://youtu.be/XqCt8gk9AdI)
* [蹤影 Smlsun: 前端自動化測試之 Selenium docker 環境 debug 指南](http://blog.smlsun.com/2015/04/selenium-docker-debug.html)
* [angular/angular-seed: Seed project for angular apps. | GitHub](https://github.com/angular/angular-seed)

## License

Copyright (c) chusiang from 2016 under the MIT license.

