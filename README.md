# lita-dyn

A [Dyn](http://dyn.com) plugin for [Lita](http://lita.io)

## Installation

Add lita-dyn to your Lita instance's Gemfile:

``` ruby
gem "lita-dyn"
```

## Configuration

Add the following variables to your Lita config file:

``` ruby
config.handlers.dyn.customer
config.handlers.dyn.username
config.handlers.dyn.password
```

## Usage

### Set record value
```
dyn set <record> <type> <value>    - Creates or updates the specified record with the given type and value
```

## License

[MIT](http://opensource.org/licenses/MIT)
