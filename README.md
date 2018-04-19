# Atlinlay

This translates text to pig latin. My kids wanted to learn more about programming, so we whipped this up in about an hour or so in a three-way pairing session. Jonathan helped me with code, Cate got bored after a while and worked on marketing.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'atlinlay'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install atlinlay

## Usage

```ruby
to_translate = Atlinlay::Translator.new("some text, supposed to be good for you")
to_translate.translate
```
=> "omesay exttay, upposedsay otay ebay oodgay orfay ouyay"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/atlinlay.
