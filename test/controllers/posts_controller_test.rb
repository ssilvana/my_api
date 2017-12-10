require 'test_helper'
require 'json'

class PostsControllerTest < ActionController::TestCase

  test "Should get valid list of posts" do
    get :index, params: { page: { number: 2 } }
    assert_response :success
    jdata = JSON.parse response.body
    assert_equal Post.per_page, jdata['data'].length
    assert_equal Post.count, jdata['meta']['total-count']
    assert_equal jdata['data'][0]['type'], 'posts'
    l = jdata['links']
    assert_equal l['first'], l['prev']
    assert_equal l['last'], l['next']
  end

  test "Should get properly sorted list" do
    post = Post.order('rating DESC').first
    get :index, params: { sort: '-rating' }
    assert_response :success
    jdata = JSON.parse response.body
    assert_equal post.title, jdata['data'][0]['attributes']['title']
  end

  test "Should get filtered list" do
    get :index, params: { filter: 'First' }
    assert_response :success
    jdata = JSON.parse response.body
    assert_equal Post.where(category: 'First').count, jdata['data'].length
  end
end