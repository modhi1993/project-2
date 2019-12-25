
class CommentsController < ApplicationController
    before_action :authenticate_user!, only: [:new , :destroy, :create]
    def index
      @comments = Comment.all
       @user = user.all
     end
    
     def new
      @comment = Comment.new
     end
    # def show
    #     @comment = Comment.find(params[:id])
    # end
    # def new
    #     @comment = current_user.comments.new
    # end
    def create
      @haul = Haul.find(params[:haul_id])
      @comment = @haul.comments.create(comment_params)
      @comment.user = current_user
      @comment.save
      redirect_to global_path(@haul) 
    end
    
   
    def destroy
    
    @haul = Haul.find(params[:haul_id])
    @comment = @haul.comments.find(params[:id])
    @comment.destroy
    redirect_to global_path(@haul)
      end
   
    private
      def comment_params
        params.require(:comment).permit(:body)
      end
  end

    
  
  
   
 
    





