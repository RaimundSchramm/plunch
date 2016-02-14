require 'test_helper'

class DishTest < ActiveSupport::TestCase

  setup do
    @valid_dish = Dish.new name: 'Currywurst'
  end

  test 'is a Dish' do
    assert_kind_of Dish, @valid_dish
  end

  test 'has a name' do
    assert_respond_to @valid_dish, :name
    assert_equal 'Currywurst', @valid_dish.name
  end

  test 'is valid' do
    assert @valid_dish.valid?
  end

  test 'has a unique name' do
    original_currywurst = Dish.new name: 'There can be only one Currywurst'
    fake_currywurst     = original_currywurst.dup
    original_currywurst.save
    assert_not fake_currywurst.valid?
  end

end
