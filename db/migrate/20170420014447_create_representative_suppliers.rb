class CreateRepresentativeSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :representative_suppliers do |t|

      t.timestamps
    end
  end
end
