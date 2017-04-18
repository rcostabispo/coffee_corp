class Product < ApplicationRecord
  has_many :product_suppliers
  has_many :suppliers, through: :product_suppliers

  enum freight_type: [:fob, :cif]
end
