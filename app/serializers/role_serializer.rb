class RoleSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :created_at, :updated_at, :department_id
end
