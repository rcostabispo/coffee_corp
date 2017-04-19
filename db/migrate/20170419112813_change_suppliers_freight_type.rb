class ChangeSuppliersFreightType < ActiveRecord::Migration[5.0]
  def change
    change_column :suppliers, :freight_type, :integer
  end
end
