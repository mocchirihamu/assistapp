class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def project_params
    params.require(:project).permit(:category_id, :limit, :detail, :suppulement, :image).merge(user_id: current_user.id)
  end
end
