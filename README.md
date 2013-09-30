# Snipsnap

Snipsnap API wrapper

## Installation

Add this line to your application's Gemfile:

    gem 'snipsnap-client', github: 'snipsnap/snipsnap-client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snipsnap-client

## Usage

First, configure your connection (e.g. in a Rails initializer)

```ruby
# config/initializers/snipsnap.rb
Snipsnap.configure do |config|
  config.protocol = 'https'
  config.host     = 'api.snipsnap.it'
  config.version  = 2
end
```

Then, get an instance

```ruby
client = Snipsnap.connect
```

### Users

To access the `users` resource

```ruby
users = client.users
```

To do a lookup,

```ruby
# lookup account information for a user by ID
users.lookup(id: 1234)  # => {
                        #      "user_id":1234,
                        #      "email_hash":"50M3_H45H",
                        #      "facebook_username":"facebook_1234",
                        #      "twitter_username":"twitter_1234",
                        #      "facebook_email_hash":"50M3_H45H"
                        #    }

# lookup account information for a user by email hash
users.lookup(hash: "50M3_H45H") # => {
                                #      "user_id":1234,
                                #      "email_hash":"50M3_H45H",
                                #      "facebook_username":"facebook_1234",
                                #      "twitter_username":"twitter_1234",
                                #      "facebook_email_hash":"50M3_H45H"
                                #    }
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
