class RepresentativeSupplier < ApplicationRecord
  belongs_to :supplier
  belongs_to :representative
end
