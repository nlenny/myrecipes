require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  def setup
    @recipe = Recipe.new(names: "peanutsoup", summary: "this is the best peanut soup recipe ever", description: "heat oil, add onions, add tomato sauce, add chicken and ground peanut, cook for 20 minutes")
  end
  
  test "recipe should be valid" do
    assert @recipe.valid?
  end
  
  test "name should be valid" do
    @recipe.names = " "
    assert_not @recipe.valid?
  end
  
  test "name length should not be too long" do
    @recipe.names = "a" * 101
    assert_not @recipe.valid?
  end
  
  test "name length should not be too short" do
    @recipe.names = "aaaa"
    assert_not @recipe.valid?
  end
  
  test "summary should be present" do
    @recipe.summary = " "
    assert_not @recipe.valid?
  end
  
  test "summary length should not be too long" do
    @recipe.summary = "a" * 151
    assert_not @recipe.valid?
  end
  
  test "summary length should not be too short" do
    @recipe.summary = "a" * 9
    assert_not @recipe.valid?
  end
  
  test "description must be present" do
    @recipe.description = " "
    assert_not @recipe.valid?
  end
  
  test "description should not be too long" do
    @recipe.description = "a" * 501
    assert_not @recipe.valid?
  end
  
  test "description should not be too short" do
    @recipe.description = "a" * 19
    assert_not @recipe.valid?
  end
  
end
