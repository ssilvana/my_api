class PostsController < ApplicationController

  def index
    posts = Post.page(params[:page] ? params[:page][:number] : 1)
    render json: posts, meta: pagination_meta(posts)
  end

  private
  def pagination_meta(object)
    {
      current_page: object.current_page,
      next_page: object.next_page,
      prev_page: object.previous_page,
      total_pages: object.total_pages,
      total_count: object.total_entries
    }
  end
end