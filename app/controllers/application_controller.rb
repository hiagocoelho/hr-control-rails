class ApplicationController < ActionController::API
  rescue_from ActionController::ParameterMissing, with: :handle_parameter_missing

  def handle_parameter_missing(exception)
    render json: { error: exception.message }, status: :bad_request
  end
end
