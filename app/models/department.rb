class Department < ApplicationRecord
  belongs_to :floor
  has_many :sections
end
