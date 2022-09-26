class ActivitiesController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        render json: Activity.all, status: :ok 
    end

    def destroy
        Activity.find(params[:id]).destroy!
        head :no_content
    end

    private

    def record_not_found(error)
        render json: { error: error.message }, status: :not_found
    end

end
