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
  spec.description   = %q{ Spriv is a multi-factor authentication platform includes
    Adaptive Risk Based Two Factor Authentication that is patent protected. Most
    users understand that 2FA is a very good thing but won’t tolerate 2FA intervention
    every time they login - this is Spriv’s sweet spot! For more information,
    videos or to contact Spriv’s technical team please go to www.spriv.com
  }
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
