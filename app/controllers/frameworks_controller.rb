class FrameworksController < ApplicationController

  def index
    @framework = Framework.new
    @frameworks = Framework.all
    @tags = Tag.all
    render('/frameworks/index.html.erb')
  end

  def create
    @frameworks = Framework.all
    @framework = Framework.new(framework_params)
    @taggings = @framework.tags

    if @framework.save
      flash[:notice] = "Sweet - it's been added"
      render '/frameworks/show.html.erb'
    else
      flash[:notice] = "Please enter a name"
      render('/frameworks/index.html.erb')
    end
  end

  def show
    @tags = Tag.all
    @frameworks = Framework.all
    @framework = Framework.find(params[:id])
    @taggings = @framework.tags
    render '/frameworks/show.html.erb'
  end

  def edit
    @framework = Framework.find(params[:id])
    render('/frameworks/edit.html.erb')
  end


  def update
    @framework = Framework.find(params[:id])
    if @framework.update(framework_params)
      flash[:notice] = "Sweet - it's been updated"
      render('/frameworks/edit.html.erb')
    else
      flash[:notice] = "Please enter a name"
      render('/frameworks/edit.html.erb')
    end
  end

  def destroy
    Framework.find(params[:id]).destroy
    index
  end

  private
    def framework_params
      params.require(:framework).permit(:name, tag_ids: [])
    end

end
