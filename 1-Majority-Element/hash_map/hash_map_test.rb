require 'test/unit'
require_relative '../../tests/helpers.rb'
require_relative 'hash_map.rb'

class HashMapTest < Test::Unit::TestCase
  self.test_order = :defined

  def setup
    @time = Time.now
  end

  def teardown
    execution_time = Time.now - @time
    self.notify("Execution time for #{self.name} test #{execution_time}")
  end

  def test_majority_element_10
    nums = load_fixture(File.expand_path('../../_fixtures/10.txt', __FILE__))
    result = majority_element(nums)
    assert_equal(Integer, result.class)
    assert_equal(3, result)
  end

  def test_majority_element_100
    nums = load_fixture(File.expand_path('../../_fixtures/100.txt', __FILE__))
    result = majority_element(nums)
    assert_equal(Integer, result.class)
    assert_equal(39, result)
  end

  def test_majority_element_1_000
    nums = load_fixture(File.expand_path('../../_fixtures/1_000.txt', __FILE__))
    result = majority_element(nums)
    assert_equal(Integer, result.class)
    assert_equal(209, result)
  end

  def test_majority_element_10_000
    nums = load_fixture(File.expand_path('../../_fixtures/10_000.txt', __FILE__))
    result = majority_element(nums)
    assert_equal(Integer, result.class)
    assert_equal(323, result)
  end

  def test_majority_element_100_000
    nums = load_fixture(File.expand_path('../../_fixtures/100_000.txt', __FILE__))
    result = majority_element(nums)
    assert_equal(Integer, result.class)
    assert_equal(20122, result)
  end

  def test_majority_element_1_000_000
    nums = load_fixture(File.expand_path('../../_fixtures/1_000_000.txt', __FILE__))
    result = majority_element(nums)
    assert_equal(Integer, result.class)
    assert_equal(595304, result)
  end

  def test_majority_element_10_000_000
    nums = load_fixture(File.expand_path('../../_fixtures/10_000_000.txt', __FILE__))
    result = majority_element(nums)
    assert_equal(Integer, result.class)
    assert_equal(1309279, result)
  end
end