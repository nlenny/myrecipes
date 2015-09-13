require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  def setup
    @recipe = Recipe.new(names: "peanutsoup", summary: "this is the best peanut soup recipe ever", description: "heat oil, add onions, add tomato sauce, add chicken and ground peanut, cook for 20 minutes")
  end
  
  test "recipe should be valid" do
    assert @recipe.valid?
  end
  
  test "name should be valid" do
    @recipe.name = ""
    assert_not @recipe.valid?
  end
  
end
