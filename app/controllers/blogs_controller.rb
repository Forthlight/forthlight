class BlogsController < ApplicationController
  def index
    @blogs =  Administration::Blog.where(published: true).order("created_at DESC").page(params[:page]).per(10)
  end

  def show
    @blog = Administration::Blog.find(params[:id])
    @recent = Administration::Blog.all.order("created_at DESC").limit(5)
  end
end
