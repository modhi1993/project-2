class HaulsController < ApplicationController
    before_action :authenticate_user!
    
    def index

      @user = current_user
        @haul = current_user.hauls
    end
    def show
      @haul = Haul.find(params[:id])
    end
    def new
        @haul = current_user.hauls.new
    end
    def create
      @haul =current_user.hauls.new(haul_params)
      @haul.save
    redirect_to hauls_path
    end
    def edit
      @haul = Haul.find(params[:id])
    end
   
    def update
     @haul = Haul.find(params[:id])
     @haul.update(haul_params)
       redirect_to @haul
    end
    def destroy
    @haul = Haul.find(params[:id])
    @haul.destroy
     redirect_to hauls_path
    end

    

    private
  def haul_params
    params.require(:haul).permit( :subject, :store_name, :city_name, :product_image, :discreption)
  end
end






