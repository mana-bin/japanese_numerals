# Japanese Numerals

Expansion of Integer.
It converts integer to Japanese Numerals

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add japanese_numerals

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install japanese_numerals

## Usage

```

123000000.to_japanese_unit_ary -> [["1", "億"], ["2300", "万"]]

123000000.to_japanese_unit -> "1億2300万"


```


to_j_unit     is alias of to_japanese_unit
to_j_unit_ary is alias of to_japanese_unit_ary


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mana-bin/japanese_numerals.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
