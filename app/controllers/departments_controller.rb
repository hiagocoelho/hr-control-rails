class DepartmentsController < ApplicationController
  def index
    departments = Department.all

    render json: DepartmentSerializer.new(departments).serializable_hash.to_json
  end

  def show
    department = Department.find(params[:id])

    render json: DepartmentSerializer.new(department).serializable_hash.to_json
  end

  def create
    department = Department.new(department_params)

    if department.save
      render json: DepartmentSerializer.new(department).serializable_hash.to_json
    else
      render json: { error: department.errors.messages }, status: 422
    end
  end

  def update
    department = Department.find_by(id: params[:id])

    if department.update(department_params)
      render json: DepartmentSerializer.new(department).serializable_hash.to_json
    else
      render json: { error: department.errors.messages }, status: 422
    end
  end

  def destroy
    department = Department.find_by(id: params[:id])

    if department.destroy
      head :no_content
    else
      render json: { error: department.errors.messages }, status: 422
    end
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end
end
