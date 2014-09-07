class TaggingsController < ApplicationController

  def index
    @tagging = Tagging.new
    @taggings = Tagging.all
    @languages = Language.all
    @frameworks = Framework.all
    @tags = Tag.all
    render('/taggings/index.html.erb')
  end

  def create
    @tagging = Tagging.new(tagging_params)
    if @tagging.save
      flash[:notice] = "Sweet - it's been added"
      index
    else
      flash[:notice] = "Please enter a name"
      index
    end
  end

  def show
    @taggings = Tagging.all
    @tagging = Tagging.find(params[:id])
    render '/taggings/show.html.erb'
  end

  def edit
    @tagging = Tagging.find(params[:id])
    render('/taggings/edit.html.erb')
  end


  def update
    @tagging = Tagging.find(params[:id])
    if @tagging.update(tagging_params)
      flash[:notice] = "Sweet - it's been updated"
      edit
    else
      flash[:notice] = "Please enter a name"
      edit
    end
  end

  def destroy
    Tagging.find(params[:id]).destroy
    index
  end

  private
    def tagging_params
      params.require(:tagging).permit(:name)
    end

end
