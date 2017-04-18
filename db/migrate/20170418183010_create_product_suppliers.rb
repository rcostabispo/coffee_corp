class CreateProductSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :product_suppliers do |t|

      t.timestamps
    end
  end
end
