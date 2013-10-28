# Snipsnap

Snipsnap API wrapper

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'snipsnap-client', github: 'snipsnap/snipsnap-client'
```

And then execute:

```console
$ bundle
```

Or install it yourself as:

```console
$ gem install snipsnap-client
```

## Usage

The default configuration will look for values set via environment variables

* `SNIPSNAP_PROTOCOL` - `http` or `https`. Defaults to `https`
* `SNIPSNAP_HOST` - The hostname to connect to. Defaults to `api.snipsnap.it`
* `SNIPSNAP_VERSION` - The API version to use. Defaults to `2`

If you don't want to use environment variables, you can manually configure via
the `configure` method (e.g. in a Rails initializer)

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
