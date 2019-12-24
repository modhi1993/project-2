
class CitiesController < ApplicationController


    def index
        @city = City.all
       
    end
   
    def show
        @ciity = City.find(params[:id])
        @hauls = Haul.where(city_id: @ciity.id)
    end




end