require_relative "pull_up_feature.rb"
require "test/unit"

class TestDatabaseThing < DatabaseThingServices
  def initialize
    @things = []
  end
end

class TestPullUpFeature < Test::Unit::TestCase
  def test_summarize
    dbts = TestDatabaseThing.new

    dbts.add_things(1)
    dbts.add_things(2)
    dbts.add_things(3)

    assert_equal(dbts.summarize, 6)
  end
end
