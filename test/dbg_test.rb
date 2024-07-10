require "test_helper"

class DbgTest < Minitest::Test
  def test_it_has_a_version_number
    refute_nil ::Version::VERSION
  end

  def test_initial
    Dbg.log.title('this a test')
    Dbg.log.add('TEST').cyan.out

    assert_equal true, true
  end
end