class CreateRepresentatives < ActiveRecord::Migration[5.0]
  def change
    create_table :representatives do |t|
      t.string :name
      t.string :occupation
      t.string :email
      t.string :phone
      t.string :cell_phone

      t.timestamps
    end
  end
end
