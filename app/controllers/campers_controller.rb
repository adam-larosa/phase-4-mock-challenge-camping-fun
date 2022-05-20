class CampersController < ApplicationController

    def create
        render json: Camper.create!( camper_params ), adapter: nil,
            except: [ :created_at, :updated_at ], status: :created
    end

    def index
        render json: Camper.all, adapter: nil, status: :ok,
            except: [ :created_at, :updated_at ]
    end

    def show
        render json: Camper.find( params[:id] ), status: :ok
    end

    private

    def camper_params
        params.permit( :name, :age )
    end

end
