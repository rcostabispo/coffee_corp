class Representative < ApplicationRecord
  has_many :representative_suppliers
  has_many :suppliers, through: :representative_suppliers
end
