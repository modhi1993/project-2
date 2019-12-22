class GlobalsController < ApplicationController 
    before_action :authenticate_user!
    def index
        @global =Haul.all
    end
   
    def show
        @global = Haul.find(params[:id])
    end


end
