class CommentsController < ApplicationController
  def create
    @pet = Pet.find(params[:pet_id])
    @comment = Comment.new(comment_params)
    @comment.pet = @pet
    if @comment.save
      redirect_to pet_path(@pet)
    else
      render 'pets/show', status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to pet_path(@comment.pet), status: :see_other
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end
