require "spriv/version"
require 'spriv/client'
require 'spriv/configuration'
require 'spriv/poller'

module Spriv
  class << self
    attr_reader :config

    def configure(&_block)
      yield @config ||= ::Spriv::Configuration.new
    end
  end
end
