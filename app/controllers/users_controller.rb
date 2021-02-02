class UsersController < ApplicationController
  layout 'article_site'
  def show
    user = User.find(params[:id])
    @articles = user.articles.all.order("created_at DESC").page(params[:page]).per(10)
  end
end
