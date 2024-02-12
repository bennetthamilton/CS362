require_relative "machine.rb"
require "test/unit"

# use inheritance to test the private (protected) methods
class FakeMachine < Machine
  def magic_number
    super
  end
end

class TestMachine < Test::Unit::TestCase

  def test_magic_number
    m = FakeMachine.new
    assert_equal(m.magic_number, 3490)
  end

end