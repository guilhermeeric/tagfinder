# frozen_string_literal: true

require_relative "tagfinder/version"
require_relative "tagfinder/commands/command"
require_relative "tagfinder/commands/find"
require "thor"

module Tagfinder
  class Error < StandardError; end

  class CLI < Thor
    def self.exit_on_failure?
      true
    end

    desc "find", "Search for text in an url"
    def find(url, text)
      find_command = Find.new(url, text)
      find_command.execute()
    end
  end
end
