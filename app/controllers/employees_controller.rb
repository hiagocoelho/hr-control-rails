class EmployeesController < ApplicationController
  def index
    employees = if params[:department_id]
                  Employee.joins(:role).where(roles: { department_id: params[:department_id] })
                else
                  Employee.all
                end
    render json: { employees: employees, total: employees.count }
  end

  def show
    employee = Employee.find(params[:id])
    render json: employee
  end

  def create
    employee = Employee.new(employee_params)

    if employee.save
      render json: employee
    else
      render json: { error: employee.errors.messages }, status: 422
    end
  end

  def update
    employee = Employee.find(params[:id])

    if employee.update(employee_params)
      render json: employee
    else
      render json: { error: employee.errors.messages }, status: 422
    end
  end

  def destroy
    employee = Employee.find(params[:id])

    if employee.destroy
      head :no_content
    else
      render json: { error: employee.errors.messages }, status: 422
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :gender_identity, :birth_date,
                                     :address, :city, :state, :country, :phone, :email_address,
                                     :verified, :document, :image_url, :role_id, :seniority_id)
  end
end
