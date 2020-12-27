require "assert"
require "dassets-erubi"

require "dassets/engine"

module Dassets::Erubi
  class UnitTests < Assert::Context
    desc "Dassets::Erubi"
    subject { unit_class }

    let(:unit_class) { Dassets::Erubi }
  end
end
