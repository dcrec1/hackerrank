# Hackerrank

Ruby wrapper to the HackerRank V2 API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hackerrank'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hackerrank

## Usage

```ruby
HackerRank.access_token = ENV['HACKERRANK_ACCESS_TOKEN']

HackerRank::Test.all
HackerRank::Test.find '12345'
HackerRank::Test.create name: "First Test", duration: 100
HackerRank::Test.update '12345', name: "Easy Test"
HackerRank::Test.delete '12345'

HackerRank::Candidate.all test_id: 12345
HackerRank::Candidate.find 64553, test_id: 12345
HackerRank::Candidate.create test_id: 12345, username: 'dc.rec1@gmail.com'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/contratadome/hackerrank. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

