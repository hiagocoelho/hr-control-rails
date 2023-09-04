class ChecksController < ApplicationController
  def health
    render json: { message: 'OK!' }
  end
end
