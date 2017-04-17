class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :description
      t.text :notes

      t.timestamps
    end
  end
end
