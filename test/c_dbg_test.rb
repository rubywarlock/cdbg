require "test_helper"

class DbgTest < Minitest::Test
  def test_it_has_a_version_number
    refute_nil ::Version::VERSION
  end

  def test_initial
    # TODO: bump to rspec tests
    CDbg.log.title('this a test')
    CDbg.log.add('TEST').cyan.out

    assert_equal true, true
  end
end