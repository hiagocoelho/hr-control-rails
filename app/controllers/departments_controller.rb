class DepartmentsController < ApplicationController
  def index
    departments = Department.all

    render json: { departments: departments }
  end

  def show
    department = Department.find(params[:id])

    render json: department
  end

  def create
    department = Department.new(department_params)

    if department.save
      render json: department
    else
      render json: { error: 'error while creating a department.' }, status: 422
    end
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end
end
