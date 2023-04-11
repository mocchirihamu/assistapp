class ProjectsController < ApplicationController
  before_action :set_project, except: [:index, :new, :create]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

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
    @comment = Comment.new
    @comments = @project.comments.includes(:user)
  end

  def edit
  end

  def update
    @project.update(project_params)
    if @project.save
     redirect_to project_path
    else
     render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  private
  def project_params
    params.require(:project).permit(:category_id, :area_id, :limit, :detail, :suppulement, :image, :completed).merge(user_id: current_user.id)
  end

  def set_project
    @project = Project.find(params[:id])
  end

  def contributor_confirmation
    redirect_to root_path unless current_user == @project.user
  end
end
