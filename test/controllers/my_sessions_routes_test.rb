require 'test_helper'

class MySessionsRoutesTest < ActionController::TestCase
  test "should route to create session" do
    assert_routing({ method: 'post', path: '/sessions' },
                   { controller: "my_sessions", action: "create" })
  end
  test "should route to delete session" do
    assert_routing({ method: 'delete', path: '/sessions/something'},
                   { controller: "my_sessions", action: "destroy", id: "something" })
  end
end