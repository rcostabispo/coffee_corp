class AddColumnToRepresentativeSupplier < ActiveRecord::Migration[5.0]
  def change
    add_column :representative_suppliers, :supplier_id, :integer
    add_column :representative_suppliers, :representative_id, :integer
  end
end
