class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag.destroy

    flash.notice = "Tag '#{@tag.name}' DESTROYED!"


    redirect_to tags_path
  end
end
