class AddColumnToProductSupplier < ActiveRecord::Migration[5.0]
  def change
    add_column :product_suppliers, :product_id, :integer
    add_column :product_suppliers, :supplier_id, :integer
  end
end
