qiandao
=======

签到 —— 一个自动签到框架 base on an HAR editor

HAR editor 使用指南：https://github.com/binux/qiandao/blob/master/docs/har-howto.md

Dockerlize
====

```
git clone https://github.com/binss/qiandao.git
cd qiandao
docker build -t binss/qiandao .
cat qiandao.sql | docker exec -i mariadb mysql -uroot -p<your-db-password>
docker run -p 8923:8923 -d --name qiandao --env-file=qiandao.env --net=shared_db binss/qiandao
docker exec -i qiandao /usr/src/app/chrole.py <your-email> admin
```

鸣谢
====

+[雪月秋水](https://plus.google.com/u/0/+%E9%9B%AA%E6%9C%88%E7%A7%8B%E6%B0%B4%E9%85%B1) [GetCookies项目](https://github.com/acgotaku/GetCookies)

许可
====

MIT
