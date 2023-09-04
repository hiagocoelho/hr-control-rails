class ApplicationController < ActionController::API
  rescue_from ActionController::ParameterMissing, with: :handle_parameter_missing
  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

  def handle_parameter_missing(exception)
    render json: { error: exception.message }, status: :bad_request
  end

  def handle_record_not_found(exception)
    render json: { error: exception.message }, status: :bad_request
  end
end
