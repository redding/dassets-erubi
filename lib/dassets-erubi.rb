# frozen_string_literal: true

require "erubi"
require "dassets/engine"
require "dassets-erubi/version"

module Dassets::Erubi; end

class Dassets::Erubi::Engine < Dassets::Engine
  def self.ERB_EXTENSIONS
    ["erb", "erubis", "erubi"]
  end

  def ext(input_ext)
    return "" if self.class.ERB_EXTENSIONS.include?(input_ext)

    input_ext
  end

  def compile(input_content)
    eval( # rubocop:disable Security/Eval
      ::Erubi::Engine.new(input_content, freeze: true).src,
    )
  end
end
