# Capistrano::Stride

[![Gem Version](https://badge.fury.io/rb/capistrano-stride.svg)](https://badge.fury.io/rb/capistrano-stride)
[![Maintainability](https://api.codeclimate.com/v1/badges/2aa1419d1454294270fb/maintainability)](https://codeclimate.com/github/ArsenBespalov/capistrano-stride/maintainability)
[![Build Status](https://travis-ci.org/ArsenBespalov/capistrano-stride.svg?branch=master)](https://travis-ci.org/ArsenBespalov/capistrano-stride)

Notifies in a Stride room about a new deployment showing the git log for the latest 
commits included in the current deploy.

## Installation

Add this line to your application's Gemfile:

```ruby
group :deployment do
    gem 'capistrano-stride', '~> 0.1'
end
```

The group declaration is optional, but it's important to make sure you only load this gem
withing a Capistrano script (as explained below) and never within your application
(eg. rails does the require of the default bundler group and the current environment group).

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install capistrano-stride
```

## Usage

Add this to your `Capfile`

```ruby
require 'capistrano/stride'
```

Then you need to configure you Stride token and the room URL you want to notify about
the new deployment

```ruby
set :stride_token, "YOUR TOKEN"
set :stride_url, "https://api.atlassian.com/site/site_id/conversation/conversation_id/message"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request