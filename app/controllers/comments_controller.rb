class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to project_path(@comment.project)
     else
      @project = @comment.project
      @comments = @project.comments
      render "projects/show"
     end
  end

  private
  def comment_params
    params.require(:comment).permit(:reply).merge(user_id: current_user.id, project_id: params[:project_id])
  end
end
