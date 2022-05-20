class ActivitiesController < ApplicationController

    def index
        render json: Activity.all
    end

    def destroy
        a = Activity.find( params[:id] )
        a.destroy
        head :no_content
    end
end
