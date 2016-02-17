require 'test_helper'

class StaticPagesRoutesTest < ActionDispatch::IntegrationTest

  test 'routes to home' do
    assert_routing({ path: '/', method: :get}, { controller: 'static_pages', action: 'home' })
  end
end
