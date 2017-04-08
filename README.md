# Spriv

Spriv is a multi-factor authentication platform includes Adaptive Risk Based Two Factor Authentication that is patent protected. Most users understand that 2FA is a very good thing but won’t tolerate 2FA intervention every time they login - this is Spriv’s sweet spot!

1. Adaptive Authentication-Risk Based Authentication: Spriv’s patented technology allows you to automate second factor authentication! If the user chooses to allow a transaction done via a specific computer and the user’s cell phone identifies a particular environmental identifier, then all future transactions will be automated as long as the same particular environmental identifier via the cell phone and the same specific computer is used. With Spriv’s technology you don’t need to train your users to press allow every time they login. When users are trained to press allow every time they get authentication messages to their phone they may press allow for a fraudster access.  

Video: How Spriv’s Adaptive authentication works: [Spriv Intro](https://www.youtube.com/watch?v=fzsJiXD6XXE)

2.	Allow/Deny: Requires the user to allow/deny specific transactions.  It can be used when the user makes a high risk transaction such as changing his address or transferring a large amount of money. Simply send the transaction authentication information to the user and the user will provide his allow/deny determination. Example: “ABC-Bank received a request to wire transfer $10,000 to John Doe. Please tap Allow or Deny.”

3.	Two Way SMS: For two-way SMS authentication, an SMS requesting an SMS reply is sent to the user. Spriv pushes the user’s reply via HTTP POST once the user replies to Spriv. For example: “Did you buy a laptop from Example_Company_ABC for $476? If yes, please reply with “Yes” and we will ship your order. If not, please reply “No” and we will cancel the order.”   Two Way SMS works in more than 200 countries!


4.	TOTP: As defined in RFC 4226 Spriv’s TOTP provides a six digit number generated using the mobile phone internal clock with TTL 30 Seconds. Spriv’s TOTP Two Factor Authentication allows you to authenticate the user even when the user is traveling and has no internet or carrier reception.

For more information, videos or to contact Spriv’s technical team please go to [Our site](https://www.spriv.com/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spriv'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spriv

## Quick Start Guide

 In your Gemfile in Rails application add gem like,

```
 gem 'spriv', require: true
```

 Add initializer file like spriv.rb

 [Signup to Spriv][spriv] and get your credentials first.

[spriv]: https://spriv.com/

```ruby
Spriv.configure do |config|
  config.username = ENV['SPRIV_USERNAME']
  config.password = ENV['SPRIV_PASSWORD']
end
```

Now you can use all Spriv API for two or three factor authentication.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/spriv. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
