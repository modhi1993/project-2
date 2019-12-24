class ProfilesController < ApplicationController
    before_action :authenticate_user! , only: [:new , :edit , :update, :destroy, :create]



end