# Capistrano::Passenger::Restart
[![Gem Version](https://badge.fury.io/rb/capistrano-passenger-restart.svg)](https://badge.fury.io/rb/capistrano-passenger-restart)

Restart Passenger support for Capistrano v3

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.0'
gem 'capistrano-passenger-restart'
```

And then execute:

    $ bundle

## Usage

Require in Capfile to use the default task:

```ruby
# Capfile
require 'capistrano/passenger/restart'
```

Use task for restart Passenger in your deploy configuration:

```ruby
# config/deploy.rb
namespace :deploy do
  after  :finishing,    :restart

  task :restart do
    on roles(:app) do
      invoke 'passenger:restart'
    end
  end
end
```

And you should be good to go!


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/capistrano-passenger-restart. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
