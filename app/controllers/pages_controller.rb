class PagesController < ApplicationController
  def show
    @page = Administration::Page.find(params[:id])
  end
 end
