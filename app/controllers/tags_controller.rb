class TagsController < ApplicationController

  def index
    render('/tags/index.html.erb')
  end
end
