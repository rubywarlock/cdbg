require "test_helper"

class DbgTest < Minitest::Test
  def test_it_has_a_version_number
    refute_nil ::Version::VERSION
  end

  def test_initial
    assert_equal true, true
  end
end