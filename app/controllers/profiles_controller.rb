class ProfilesController < ApplicationController
    before_action :authenticate_user! , only: [:edit, :show , :update ]

    def index
        @profile = current_user.profile
    end

    def edit 
        @profile = current_user.profile
    end
 
    def update
        @profile = current_user.profile
        @profile.update(profile_params)
        redirect_to profiles_path
    end  

    private
    def profile_params
        params.require(:profile).permit(:about , :image)
    end
end