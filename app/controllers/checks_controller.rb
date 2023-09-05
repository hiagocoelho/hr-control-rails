class ChecksController < ApplicationController
  def health
    render json: { message: 'OK!' }
  end

  def metrics
    render json: { metrics: {
      departments: { total: Department.all.count },
      roles: { total: Role.all.count },
      employees: { total: Employee.all.count }
    } }
  end
end
