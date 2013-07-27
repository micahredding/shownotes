shownotes Setup
=================

```Shell
rvm gemset create shownotes
rvm gemset use shownotes
rvm --rvmrc --create 2.0.0@shownotes --ruby-version
bundle install
cp config/database.yml.dist config/database.yml
vi config/database.yml # put in your database configation details
rake db:create
rake db:migrate
rake db:seed
rails s
```

This Rails app was created with help from [Centresource\'s](http://www.centresource.com/ "Centresource") [Preseason](http://github.com/centresource/preseason "Preseason") Project
