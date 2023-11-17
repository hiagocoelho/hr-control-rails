class EmployeeSerializer
  include JSONAPI::Serializer
  attributes :id, :first_name, :last_name, :gender_identity, :birth_date,
             :address, :city, :state, :country, :phone, :email_address, :verified, :document,
             :image_url, :role_id, :seniority_id, :created_at, :updated_at
end
