# frozen_string_literal: true

require "test_helper"

class YaeEnumTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Yae::VERSION
  end

  def test_it_defines_values_and_gets
    enum = Class.new(Yae::Enum) do
      define :foo, 1
      define :bar, 2
    end

    assert_equal 1, enum.get(:foo)
    assert_equal 2, enum.get(:bar)
    assert_equal [:foo, :bar], enum.keys
  end

  def test_it_allows_inheritance_of_keys
    enum = Class.new(Yae::Enum) do
      define :foo, 1
      define :bar, 2
    end

    enum2 = Class.new(enum) do
      define :baz, "baz"
    end

    assert_equal 1, enum.get(:foo)
    assert_equal 2, enum2.get(:bar)
    assert_equal "baz", enum2.get(:baz)
    refute enum.key?(:baz)
  end

  def test_get_multiple
    enum = Class.new(Yae::Enum) do
      define :foo, 1
      define :bar, 2
    end

    assert_equal [1, 2], enum.get_multiple(:foo, :bar)
  end

  def test_include?
    enum = Class.new(Yae::Enum) do
      define :foo, 1
      define :bar, 2
    end

    assert enum.include?(1)
    assert enum.include?(2)
    refute enum.include?(3)
  end

  def test_keyifying
    enum = Class.new(Yae::Enum) do
      define :foo, 1
      define :bar_things, 2
    end

    assert_equal :foo, enum.keyify("Foo")
    assert_equal 2, enum.get(enum.keyify("Bar Things"))
  end
end
