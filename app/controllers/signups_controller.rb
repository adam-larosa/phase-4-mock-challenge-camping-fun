class SignupsController < ApplicationController

    def create
        s = Signup.create!( signup_params )
        render json: s.activity, status: :created
    end

    private

    def signup_params
        params.permit( :time, :camper_id, :activity_id )
    end
end
