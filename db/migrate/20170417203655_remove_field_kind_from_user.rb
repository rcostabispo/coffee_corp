class RemoveFieldKindFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :kind, :string
  end
end
