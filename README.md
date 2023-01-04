# Yae::Enum

"Yet another enum" for Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yae'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install yae

## Usage

```ruby
class FooBar < Yae::Enum
  define :foo, 1
  define :bar, "bar"
end

FooBar.get(:foo) # => 1
FooBar.get(:bar) # => "bar"
```

By default `.get` raises if the key doesn't exist but this can be changed

```ruby
FooBar.get(:baz, raises: false) # => nil
```

Other methods such as `.get_multiple`, `.include?` and so on exist, see `lib/yae/enum.rb`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/stevegeek/yae.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
