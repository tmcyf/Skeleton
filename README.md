TMCYF.web :: Skeleton
======================

Chef recipes to set up an Ubuntu server with a Rails stack for the TMCYF website.

### Stack & Features (planned)

* Users / SSH keys
* Nginx web server
* Ruby
* Rails & dependencies
* Postfix
* Monit
* NewRelic

### Getting Started

Follow the instructions below to set up a server to host Ruby on Rails.

#### Server Prereqs

* Ubuntu 12.04 LTS

#### Installation

Clone repo:

`git clone [git clone url] skeleton`

Run bundler:

`bundle install`

#### Setting up the server

Prepare the server with `knife solo`. This installs Chef on the server.

`knife solo prepare <user>@<host/ip>`

This will create `nodes/<host/ip>.json`.

*** Unfinished ***