require 'test_helper'

class MealLogEntriesRoutesTest < ActionDispatch::IntegrationTest

  test 'routes to index' do
    assert_routing({ path: '/meal_logs/1/meal_log_entries', method: :get },
                   { controller: 'meal_log_entries', action: 'index', meal_log_id: '1' })
  end

  test 'routes to new' do
    assert_routing({ path: '/meal_logs/2/meal_log_entries/new', method: :get },
                   { controller: 'meal_log_entries', action: 'new', meal_log_id: '2' })
  end

  test 'routes to create' do
    assert_routing({ path: '/meal_logs/3/meal_log_entries', method: :post },
                   { controller: 'meal_log_entries', action: 'create', meal_log_id: '3' })
  end

  test 'routes to show' do
    assert_routing({ path: '/meal_logs/4/meal_log_entries/1', method: :get },
                   { controller: 'meal_log_entries', action: 'show', id: '1', meal_log_id: '4' })
  end

  test 'routes to edit' do
    assert_routing({ path: '/meal_logs/5/meal_log_entries/1/edit', method: :get },
                   { controller: 'meal_log_entries', action: 'edit', id: '1', meal_log_id: '5' })
  end

  test 'routes to update' do
    assert_routing({ path: '/meal_logs/6/meal_log_entries/1', method: :patch },
                   { controller: 'meal_log_entries', action: 'update', id: '1', meal_log_id: '6' })
  end

  test 'routes to destroy' do
    assert_routing({ path: '/meal_logs/7/meal_log_entries/1', method: :delete },
                   { controller: 'meal_log_entries', action: 'destroy', id: '1', meal_log_id: '7' })
  end
end
