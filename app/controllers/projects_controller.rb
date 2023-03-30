class ProjectsController < ApplicationController
  def index
    @project = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(prototype_params)
    if @project.save
      redirect_to root_path
    else
      render :new
    end
  end
end
