class EmployeeSerializer
  include JSONAPI::Serializer
  attributes :first_name

  belongs_to :role
  belongs_to :seniority
end
