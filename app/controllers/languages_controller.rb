class LanguagesController < ApplicationController

  def index
    @language = Language.new
    @languages = Language.all
    @tags = Tag.all
    render('/languages/index.html.erb')
  end
end
