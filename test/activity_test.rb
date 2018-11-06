require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/activity'

class ActivityTest < Minitest::Test

  def setup
    @activity = Activity.new("Brunch")
  end

  def test_it_exists
    assert_instance_of Activity, @activity
  end

  def test_it_has_a_name
    assert_equal "Brunch", @activity.name
  end

  def test_it_has_participants
    assert_equal ({}), @activity.participants
  end

  def test_it_can_add_participants
    @activity.add_participant("Maria", 20)
    expected = {"Maria" => 20}
    assert_equal expected, @activity.participants
  end

  def test_it_has_total_cost
    @activity.add_participant("Maria", 20)
    assert_equal 20, @activity.total_cost
  end
end