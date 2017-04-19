class Supplier < ApplicationRecord
  has_many :product_suppliers
  has_many :products, through: :product_suppliers

  enum freight_type: [:fob, :cif]
end
