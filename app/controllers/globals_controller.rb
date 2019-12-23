class GlobalsController < ApplicationController 
    before_action :authenticate_user!
    def index
        @global =Haul.all
        @user = current_user
    
    end
   
    def show
        @global = Haul.find(params[:id])
        @comment = Comment.where(haul_id: @global)
        @user = User.where(user_id: @comment)
        @city =City.find(@global.city_id)

    end


end
