# pplx-api-ruby

API wrapper for pplx-api. One of the fastest ways to access Mistral 7B, Llama2 13B, Code Llama 34B, Llama2 70B, replit-code-v1.5-3b models.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add pplx-api-ruby

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install pplx-api-ruby

## Usage
### Configuration

You can configure the API key globally:

```ruby
PplxApiRuby.configure do |config|
  config.api_key = "YOUR_GLOBAL_API_KEY"
end
```
Or, provide it when creating a new client instance:

```ruby
client = PplxApi::Client.new(api_key: "YOUR_SPECIFIC_API_KEY")
```
If an API key is provided during client instantiation, it will override the global API key for that client instance.

Here's a basic usage guide:
```ruby
require 'pplx_api_ruby'

# Initialize the client
client = PplxApi::Client.new

# Generate a model's response
response = client.generate_response(
  model: 'mistral-7b-instruct',
  messages: [
    { content: "Hello", role: "user" }
  ],
  max_tokens: 100,  # optional
  temperature: 1.0  # optional
)

puts response
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pplx-api-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/pplx-api-ruby/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Pplx::Api::Ruby project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/pplx-api-ruby/blob/master/CODE_OF_CONDUCT.md).
