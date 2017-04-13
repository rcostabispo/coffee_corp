class User < ApplicationRecord
  enum kind: [:employee, :manager]
  enum status: [:active, :inactive]
end
