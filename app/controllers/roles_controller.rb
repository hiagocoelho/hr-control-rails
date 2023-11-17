class RolesController < ApplicationController
  def index
    roles = if params[:department_id]
              Role.where(department_id: params[:department_id])
            else
              Role.all
            end

    render json: { roles: RoleSerializer.new(roles).serializable_hash, total: roles.count }
  end

  def show
    role = Role.find(params[:id])

    render json: role
  end

  def create
    role = Role.new(role_params)

    if role.save
      render json: role
    else
      render json: { error: role.errors.messages }, status: 422
    end
  end

  def update
    role = Role.find(params[:id])

    if role.update(role_params)
      render json: role
    else
      render json: { error: role.errors.messages }, status: 422
    end
  end

  def destroy
    role = Role.find(params[:id])

    if role.destroy
      head :no_content
    else
      render json: { error: role.errors.messages }, status: 422
    end
  end

  private

  def role_params
    params.require(:role).permit(:name, :department_id)
  end

  def options
    @options ||= { include: %i[department] }
  end
end
