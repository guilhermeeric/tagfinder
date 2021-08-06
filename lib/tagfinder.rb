# frozen_string_literal: true

require_relative "tagfinder/version"
require "thor"

module Tagfinder
  class Error < StandardError; end

  class CLI < Thor
    def self.exit_on_failure?
      true
    end

    desc "find", "Search for text in an url"
    def find(url, text)
      puts "You want to find #{text} on the url #{url}?"
    end
  end
end
