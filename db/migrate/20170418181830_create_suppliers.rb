class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :company_name
      t.string :fantasy_name
      t.string :document
      t.string :individual_businessman
      t.string :zip_code
      t.string :address
      t.string :number
      t.string :neighborhood
      t.string :state
      t.string :city
      t.string :principal_activity
      t.string :delivery_time
      t.string :request_time
      t.string :freight_type
      t.string :payment_conditions

      t.timestamps
    end
  end
end
