class LanguagesController < ApplicationController

  def index
    render('/languages/index.html.erb')
  end
end
