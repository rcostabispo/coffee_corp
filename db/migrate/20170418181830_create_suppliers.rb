class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :code
      t.string :company_name
      t.string :fantasy_name
      t.string :document
      t.string :individual_businessman
      t.string :site
      t.string :email
      t.string :phone
      t.string :zip_code
      t.string :neighborhood
      t.string :address
      t.string :number
      t.string :complement
      t.string :state
      t.string :city
      t.string :principal_activity
      t.string :delivery_time
      t.string :request_time
      t.string :freight_type
      t.string :payment_conditions
      t.string :icms
      t.string :pis_cofins
      t.string :ipi
      t.text   :last_purchase
      t.string :notes

      t.timestamps
    end
  end
end


