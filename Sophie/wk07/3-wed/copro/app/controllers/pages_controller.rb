class PagesController < ApplicationController
  def home
    @project = Project.all
  end
end
