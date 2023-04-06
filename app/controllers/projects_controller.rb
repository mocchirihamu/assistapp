class ProjectsController < ApplicationController
  def index
    if params[:area_id]
      @area = Area.find(params[:area_id])
      @projects = @area.projects.order(created_at: :desc).all
    else
      @projects = Project.order(created_at: :desc).all
    end
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

  def show
    @project = Project.find(params[:id])
    @comment = Comment.new
    @comments = @project.comments.includes(:user)
  end

  def edit
    @project = Project.find(params[:id])
    unless @project.user_id == current_user.id
      redirect_to root_path
    end
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    if @project.save
     redirect_to project_path
    else
     render :edit
    end
  end

  private
  def project_params
    params.require(:project).permit(:category_id, :area_id, :limit, :detail, :suppulement, :image).merge(user_id: current_user.id)
  end
end
