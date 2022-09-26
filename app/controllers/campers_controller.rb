class CampersController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def index
        render json: Camper.all, status: :ok
    end

    def show
        render json: Camper.find(params[:id]), status: :ok, serializer: CamperActivitiesSerializer
    end

    def create
        render json: Camper.create!(camper_params), status: :created
    end

    private

    def record_not_found(error)
        render json: { error: error.message }, status: :not_found
    end

    def record_invalid(error)
        render json: { error: error.message }, status: :unprocessable_entity
    end

    def camper_params
        params.permit(:name, :age)
    end

end
