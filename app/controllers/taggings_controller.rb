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
    @tagging = Tagging.new(tag_id: params[:tag_id],
                          taggable_id: params[:taggable_id],
                          taggable_type: params[:taggable_type])
    if @tagging.save
      flash[:notice] = "Sweet - it's been added"
      if @tagging.taggable_type == "Language"
        redirect_to '/languages/'
      elsif @tagging.taggable_type == "Framework"
        redirect_to '/frameworks/'
      end
    else
      flash[:notice] = "Please enter a name"
      if @tagging.taggable_type == "Language"
        redirect_to '/languages/'
      elsif @tagging.taggable_type == "Framework"
        redirect_to '/frameworks/'
      end
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

end
