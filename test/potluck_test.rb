require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test

  def setup
    @potluck = Potluck.new("7-13-18")
    @dish_2 = Dish.new("Couscous Salad", :appetizer)
    @dish_3 = Dish.new("Cocktail Meatballs", :entre)
  end

  def test_it_exists
     assert_instance_of Potluck, @potluck
  end

  def test_has_date
    assert_equal "7-13-18",@potluck.date
  end

  def test_if_dishes
    assert_equal [], @potluck.dishes
  end

  def test_potluck_add_dishes_and_returns_arr_count
    @potluck.add_dish(@dish_1)
    @potluck.add_dish(@dish_2)
    assert_equal [@dish_1,@dish_2], @potluck.dishes
    assert_equal 2, @potluck.dishes.length
  end
 #if its in the setup on top, it will carry over,
 #if not, then its just in this test

end #end class
