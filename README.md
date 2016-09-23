[![Build Status](https://travis-ci.org/DaniG2k/korean_name.svg?branch=master)](https://travis-ci.org/DaniG2k/korean_name)   [![Coverage Status](https://coveralls.io/repos/github/DaniG2k/korean_name/badge.svg?branch=master)](https://coveralls.io/github/DaniG2k/korean_name?branch=master)

# KoreanName

The KoreanName gem converts Korean names from hangeul into their English equivalent. It can also do the reverse.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'korean_name'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install korean_name

## Usage

Require the gem:

```ruby
require 'korean_name'
```

Then convert a Korean name into English:

```ruby
name = KoreanName::Translator.new :first_name => '연아', :last_name => "김"
name.to_en
 => {:first_name=>"Yeonah", :last_name=>"Kim"}
```

or do the opposite:

```ruby
name = KoreanName::Translator.new :first_name => "Sohyeon", :last_name => "Choe"
name.to_ko
 => {:first_name=>"소현", :last_name=>"최"}
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DaniG2k/korean_name.
