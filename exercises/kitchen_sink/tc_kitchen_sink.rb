require_relative "kitchen_sink.rb"
require "test/unit"

class FakeKitchenSink < KitchenSink

  attr_accessor :output_str

  def get_triangle_base
    3
  end

  def get_triangle_height
    4
  end

  def output(area)
    @output_str = get_output_string(area)
  end

end

class TestKitchenSink < Test::Unit::TestCase

  def test_triangle_area
    k = FakeKitchenSink.new
    k.triangle_area
    assert_equal(k.output_str, "The area is 6.0")
  end

end