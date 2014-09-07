class LanguagesController < ApplicationController

  def index
    @language = Language.new
    @languages = Language.all
    @tags = Tag.all
    render('/languages/index.html.erb')
  end

  def create
    @language = Language.new(language_params)
    if @language.save
      flash[:notice] = "Sweet - it's been added"
      index
    else
      flash[:notice] = "Please enter a name"
      index
    end
  end

  def show
    @languages = Language.all
    @language = Language.find(params[:id])
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
      edit
    else
      flash[:notice] = "Please enter a name"
      edit
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
