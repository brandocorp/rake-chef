# Rake::Chef

Provide Rake tasks with Chef Recipe DSL

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rake-chef'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rake-chef

## Usage

Add your recipe tasks to your rake file. You can use resources as you would in 
`chef-apply`.

```ruby

# Rakefile
require 'chef/rake'

recipe :log do
  log 'Hello from rake'
end

```

Then run your task with the following command

```text
$ rake chef:recipe:log
Recipe: (rake-chef cookbook)::(rake-chef recipe)
  * log[Hello from rake] action write
  
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rake-chef. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

