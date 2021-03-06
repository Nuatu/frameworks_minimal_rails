class LanguagesController < ApplicationController

  def index
    @language = Language.new
    @languages = Language.all
    @tags = Tag.all
    render('/languages/index.html.erb')
  end

  def create
    @languages = Language.all
    @language = Language.new(language_params)
    @taggings = @language.tags
    if @language.save
      flash[:notice] = "Sweet - it's been added"
      render '/languages/show.html.erb'
    else
      flash[:notice] = "Please enter a name"
      render('/languages/index.html.erb')
    end
  end

  def show
    @tags = Tag.all
    @languages = Language.all
    @language = Language.find(params[:id])
    @taggings = @language.tags
    render '/languages/show.html.erb'
  end

  def edit
    @language = Language.find(params[:id])
    render('/languages/edit.html.erb')
  end


  def update
    @language = Language.find(params[:id])
    if @language.update(language_params)
      flash[:notice] = "Sweet - it's been updated"
      render('/languages/edit.html.erb')
    else
      flash[:notice] = "Please enter a name"
      render('/languages/edit.html.erb')
    end
  end

  def destroy
    Language.find(params[:id]).destroy
    index
  end

  private
    def language_params
      params.require(:language).permit(:name, tag_ids: [])
    end

end
