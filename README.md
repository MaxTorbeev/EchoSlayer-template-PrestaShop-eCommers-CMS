# Echoslayer Template
Template for eCommers CMS PrestaShop 1.7

## Getting started
For MS Windows:

- Install [GIT](https://git-scm.com/)
- Install [Xampp](https://www.apachefriends.org/ru/index.html)
- Install [NodeJs 6.x.x](https://nodejs.org/en/)
- Install [Composer](https://getcomposer.org/)

## Start with Prestashop
- `git clone https://github.com/PrestaShop/PrestaShop.git`
- `composer update`
- install on LAMP server

## Start working with webpack on this template
- `cd _div`
- `npm install`
- `npm run watch`
- update or create record into database `PrestaShop` on table `ps_shop`. for example MySQL:
UPDATE `ps_shop` SET `theme_name` = 'echoslayer' WHERE `ps_shop`.`id_shop` = 1;