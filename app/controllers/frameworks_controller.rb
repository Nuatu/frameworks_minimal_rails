class FrameworksController < ApplicationController

  def index
    @framework = Framework.new
    @frameworks = Framework.all
    @tags = Tag.all
    render('/frameworks/index.html.erb')
  end

  def create
    @framework = Framework.new(framework_params)
    if @framework.save
      flash[:notice] = "Sweet - it's been added"
      index
    else
      flash[:notice] = "Please enter a name"
      index
    end
  end

  def show
    @frameworks = Framework.all
    @framework = Framework.find(params[:id])
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
      edit
    else
      flash[:notice] = "Please enter a name"
      edit
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
