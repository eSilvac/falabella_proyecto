class Section < ApplicationRecord
  belongs_to :floor
  belongs_to :department

  has_many :external_employees
  has_many :falabella_employees
end
