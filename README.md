# README

Code used for the presentation of Hotwire in Klika Winter Webinar 2021

Reactive Rails applications 

There are 2 branches in the git repository.
Master branch contains the initial app without Turbo/Stimulus integration.
Finished-product branch contains the final app with Hotwire integration.

# DEPENDENCIES

In order to run the app localy, you must have the following:

- Ruby 2.6.6
- Rails >6.0
- Postgres
- Redis

# Setup Guilde

## Install dependencies

```
$ brew install coreutils openssl libyaml libffi automake autoconf readline libxslt wxmac gpg git
```

## Install Redis

```
$ brew install redis
```


## Install ruby version manager

```
$ git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.3
$ cd ~/.asdf
$ git checkout "$(git describe --abbrev=0 --tags)"
$ echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
$ echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile
```

Restart your shell so that PATH changes take effect. (Opening a new terminal tab will usually do it.)

## Install ruby

Check ruby version in `Gemfile`

```
$ asdf update
$ asdf plugin-add ruby
$ asdf install ruby 2.6.6
```

## Install pg database

https://github.com/PostgresApp/PostgresApp/releases/download/v2.2/Postgres-2.2-9.5-9.6-10-11.dmg

```
$ brew install postgresql
```

## Install project dependencies

Make sure you are inside webinar-hotwire project.

```
$ asdf local ruby 2.6.6
```

## Run the app first time 

Make sure you are inside the webinar-hotwire project

```
$ bundle exec rails db:create
$ redis-server 
$ bundle install
$ bundle exec rails server
```

Your app should be available in localhost:3000


