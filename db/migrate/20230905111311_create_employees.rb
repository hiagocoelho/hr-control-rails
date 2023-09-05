class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender_identity
      t.date :birth_date
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :phone
      t.string :email_address
      t.boolean :verified, default: false
      t.string :document
      t.string :image_url
      t.references :role, null: false, foreign_key: true
      t.references :seniority, null: false, foreign_key: true

      t.timestamps
    end
  end
end
