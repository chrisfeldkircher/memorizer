class WelcomeController < ApplicationController
  def index
    @images = Image.all
    @article = Article.all
  end

  def about
  end

  def gallery
    @images = Image.all
  end

  def post
    @article = Article.find(params[:id])
  end

end
