require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishTest < Minitest::Test

def test_it_exists
  dish = Dish.new("Salad", :appetizer)
  assert_instance_of Dish, dish

end

def test_it_has_name
  dish = Dish.new("Salad", :appetizer)
  dish.name
  assert_equal "Salad", dish.name
end

def test_category
  dish = Dish.new("Salad", :appetizer)
  actual = dish.category
  expected = :appetizer

  assert_equal expected, actual
end 

end
