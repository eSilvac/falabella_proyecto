# == Schema Information
#
# Table name: shifts
#
#  shift_id       :integer          not null, primary key
#  entry_time     :date
#  departure_time :date
#

class Shift < ApplicationRecord
  has_many :external_employees
  has_many :falabella_employees

  has_many :external_employee_shifts
  has_many :falabella_employee_shifts
end
