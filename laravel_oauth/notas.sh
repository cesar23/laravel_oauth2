#!/usr/bin/env bash
#fuente del curso:https://www.youtube.com/watch?v=WmCltXsEHYk&t=5s

composer require laravel/passport

php artisan migrate
php artisan  make:auth
php artisan  passport:install

php artisan make:model Client
php artisan make:controller ClientController
composer require barryvdh/laravel-cors

php artisan vendor:publish --provider="Barryvdh\Cors\ServiceProvider"
php artisan passport:client --password

php artisan make:migration create_posts_table --create=posts


php artisan make:model Post

php artisan make:controller PostController
php artisan make:seeder PostsTableSeeder
php artisan make:seeder
php artisan migrate:refresh --seed
php artisan passport:client --password
