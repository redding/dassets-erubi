# frozen_string_literal: true

require "assert/factory"

module Factory
  extend Assert::Factory

  def self.name
    "Joe"
  end

  def self.erb
    "hello, <%= Factory.name %>!"
  end

  def self.erb_compiled
    "hello, Joe!"
  end
end
