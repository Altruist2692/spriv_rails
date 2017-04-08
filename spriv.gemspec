# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spriv/version'

Gem::Specification.new do |spec|
  spec.name          = "spriv"
  spec.version       = Spriv::VERSION
  spec.authors       = ["Altruist2692"]
  spec.email         = ["altruist2692@gmail.com"]

  spec.summary       = %q{Ruby wrapper of Spriv API which provides different ways
    of two factor authentication.}
  spec.description   = %q{ Spriv is a multi-factor authentication platform  \
    includes Adaptive Risk Based Two Factor Authentication that is patent \
    protected. Most users understand that 2FA is a very good thing but won’t \
    tolerate 2FA intervention every time they login - this is Spriv’s sweet spot! <br>
    1. Adaptive Authentication-Risk Based Authentication: Spriv's patented \
    technology allows you to automate second factor authentication! If the user \
    chooses to allow a transaction done via a specific computer and the user's \
    cell phone identifies a particular environmental identifier, then all future \
    transactions will be automated as long as the same particular environmental \
    identifier via the cell phone and the same specific computer is used. With \
    Spriv's technology you don't need to train your users to press allow every \
    time they login. When users are trained to press allow every time they get \
    authentication messages to their phone they may press allow for a fraudster \
    access. <br> \
    Video: How Spriv’s Adaptive authentication works: https://www.youtube.com/watch?v=fzsJiXD6XXE <br>
    2.	Allow/Deny: Requires the user to allow/deny specific transactions.  \
    It can be used when the user makes a high risk transaction such as changing \
    his address or transferring a large amount of money. Simply send the transaction \
    authentication information to the user and the user will provide his allow/deny \
    determination. Example: “ABC-Bank received a request to wire transfer $10,000 \
    to John Doe. Please tap Allow or Deny."<br> \
    3.	Two Way SMS: For two-way SMS authentication, an SMS requesting an SMS reply \
    is sent to the user. Spriv pushes the user’s reply via HTTP POST once the user \
    replies to Spriv. For example: “Did you buy a laptop from Example_Company_ABC \
    for $476? If yes, please reply with “Yes” and we will ship your order. If not, \
      please reply “No” and we will cancel the order.”   Two Way SMS works in more \
      than 200 countries! <br> \
    4.	TOTP: As defined in RFC 4226 Spriv’s TOTP provides a six digit number \
    generated using the mobile phone internal clock with TTL 30 Seconds. Spriv’s \
    TOTP Two Factor Authentication allows you to authenticate the user even when \
    the user is traveling and has no internet or carrier reception. For more \
    information, videos or to contact Spriv’s technical team please go to www.spriv.com }
  spec.homepage      = "https://spriv.com/"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
