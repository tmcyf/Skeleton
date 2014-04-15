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

* Ubuntu 12.04 LTSa
* YF ssh keys

#### Installation

First you'll need to add the YF ssh keys to your machine. Obtain the keys and place them in the ~/.ssh directory. Then:

`ssh-add ~/.ssh/yf_rsa`

It'll ask you for a passphrase but you already know that, don't you?

Once the identity is added, onwards~!

Clone repo:

`git clone git@github.com:tmcyf/skeleton.git skeleton`

Run bundler:

`bundle install`

#### Setting up the server

Create `deploy.json` in `data_bags/users` and copy the contents of `deploy.json.example`.

Generate a new password:

`openssl passwd -1 "yourpasswordhere"`

Add your ssh public key to `ssh_keys`:

`cat ~/.ssh/id_rsa.pub`

Prepare the server with `knife solo`. This installs Chef on the server.

`knife solo prepare <user>@<host/ip>`

This will create `nodes/<host/ip>.json`. Copy the contents `node.json.example` into your host json file.

Then, install everything to provision the server to run Rails:

`knife solo cook <user>@<host/ip>`

Navigate over to the server IP and you should see the message "Server provisioned and ready to accept deployment!".
