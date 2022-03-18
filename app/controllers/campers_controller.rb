class CampersController < ApplicationController

    def index
        render json: Camper.all, status: 200
    end

    def show
        render( 
            json: Camper.find( params[:id] ), 
            serializer: CamperShowSerializer
        )
    end

    def create
        render json: Camper.create!( camper_params ), status: 201
    end

    private

    def camper_params
        params.permit(:name, :age)
    end
end
