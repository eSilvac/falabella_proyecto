class Shift < ApplicationRecord
  has_many :external_employees
  has_many :falabella_employees
end
