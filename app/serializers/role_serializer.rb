class RoleSerializer
  include JSONAPI::Serializer
  attributes :name, :department_id
end
