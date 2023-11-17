class SenioritiesController < ApplicationController
  def index
    seniorities = Seniority.all

    render json: SenioritySerializer.new(seniorities).serializable_hash.to_json
  end

  def show
    seniority = Seniority.find(params[:id])

    render json: SenioritySerializer.new(seniority).serializable_hash.to_json
  end

  def create
    seniority = Seniority.new(seniority_params)

    if seniority.save
      render json: SenioritySerializer.new(seniority).serializable_hash.to_json
    else
      render json: { error: seniority.errors.messages }, status: 422
    end
  end

  def update
    seniority = Seniority.find(params[:id])

    if seniority.update(seniority_params)
      render json: SenioritySerializer.new(seniority).serializable_hash.to_json
    else
      render json: { error: seniority.errors.messages }, status: 422
    end
  end

  def destroy
    seniority = Seniority.find(params[:id])

    if seniority.destroy
      head :no_content
    else
      render json: { error: seniority.errors.messages }, status: 422
    end
  end

  private

  def seniority_params
    params.require(:seniority).permit(:name)
  end
end
