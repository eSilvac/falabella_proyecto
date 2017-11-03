class Floor < ApplicationRecord
  has_many :departments
  has_many :sections
  has_many :falabella_employees
end
