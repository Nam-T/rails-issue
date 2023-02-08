# README

1. Install Ruby, Rails, Redis, Mysql Server

- Ruby 2.7.6
- Rails 6.1.7
- mysql 5.7.x

##### Required package

- imagemagick
  `sudo apt-get install imagemagick`
- ffmpeg
  `sudo apt-get install ffmpeg`

2. Clone project

```
git clone git@github.com:Nam-T/rails-issue.git
```

3. Setting project

```
# Setting database.yml
cp config/database.yml.example config/database.yml

# Settings application.yml
cp config/application.yml.example config/application.yml
```

Edit database.yml, application.yml

4. Create database

```
rails db:create db:migrate db:seed
```

5. Install js package

```
yarn install
```
