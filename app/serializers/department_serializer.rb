class DepartmentSerializer
  include JSONAPI::Serializer
  attributes :name

  has_many :roles
end
