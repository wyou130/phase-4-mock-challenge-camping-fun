class SignupsController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def create
        render json: Signup.create!(signup_params), status: :created, serializer: SignupActivitySerializer
    end

    private

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end

    def record_invalid(error)
        render json: { error: error.message}, status: :unprocessable_entity
    end
    
end
