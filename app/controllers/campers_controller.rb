class CampersController < ApplicationController

    def index
        render json: Camper.all, include: [:id, :name, :age]
    end

    def show
        camper = Camper.find_by(id: params[:id])
        if camper
            render json: camper
        else
            render json: {error: "Camper not found"}, status: 404
        end
    end

    def create
        camper = Camper.create(camper_params)
        if camper.valid?
            render json: camper, include: [:id, :name, :age], status: 201
        else
            render json: {errors: camper.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def camper_params
        params.permit(:name, :age)
    end
end
