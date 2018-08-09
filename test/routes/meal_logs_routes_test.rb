require 'test_helper'

class MealLogsRoutesTest < ActionDispatch::IntegrationTest

  test 'routes to index' do
    assert_routing({ path: '/meal_logs', method: :get },
                   { controller: 'meal_logs', action: 'index' })
  end

  test 'routes to new' do
    assert_routing({ path: '/meal_logs/new', method: :get },
                   { controller: 'meal_logs', action: 'new' })
  end

  test 'routes to create' do
    assert_routing({ path: '/meal_logs', method: :post },
                   { controller: 'meal_logs', action: 'create' })
  end

  test 'routes to show' do
    assert_routing({ path: '/meal_logs/1', method: :get },
                   { controller: 'meal_logs', action: 'show', id: '1' })
  end

  test 'routes to edit' do
    assert_routing({ path: '/meal_logs/2/edit', method: :get },
                   { controller: 'meal_logs', action: 'edit', id: '2' })
  end

  test 'routes to update' do
    assert_routing({ path: '/meal_logs/3', method: :patch },
                   { controller: 'meal_logs', action: 'update', id: '3' })
  end

  test 'routes to destroy' do
    assert_routing({ path: '/meal_logs/4', method: :delete },
                   { controller: 'meal_logs', action: 'destroy', id: '4' })
  end
end
