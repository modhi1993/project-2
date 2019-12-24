class GlobalsController < ApplicationController 
    def index
        @global =Haul.all
        if user_signed_in? 
        @user = current_user
        end
    end
   
    def show
        @global = Haul.find(params[:id])
        @comment = Comment.where(haul_id: @global)
        @user = User.where(user_id: @comment)
        @city =City.find(@global.city_id)

    end


end
