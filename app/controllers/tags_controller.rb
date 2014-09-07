class TagsController < ApplicationController

  def index
    @tag = Tag.new
    @tags = Tag.all
    @tags = Tag.all
    render('/tags/index.html.erb')
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:notice] = "Sweet - it's been added"
      index
    else
      flash[:notice] = "Please enter a name"
      index
    end
  end

  def show
    @tags = Tag.all
    @tag = Tag.find(params[:id])
    render '/tags/show.html.erb'
  end

  def edit
    @tag = Tag.find(params[:id])
    render('/tags/edit.html.erb')
  end


  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      flash[:notice] = "Sweet - it's been updated"
      edit
    else
      flash[:notice] = "Please enter a name"
      edit
    end
  end

  def destroy
    Tag.find(params[:id]).destroy
    index
  end

  private
    def tag_params
      params.require(:tag).permit(:name)
    end

end
