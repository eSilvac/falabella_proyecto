# == Schema Information
#
# Table name: shifts
#
#  shift_id       :integer          not null, primary key
#  entry_time     :time
#  departure_time :time
#

class Shift < ApplicationRecord
  has_many :external_employees
  has_many :falabella_employees

  has_many :external_employee_shifts
  has_many :falabella_employee_shifts

  def shift_time
    "#{entry_time.strftime("%I:%M%p")} - #{departure_time.strftime("%I:%M%p")}"
  end
end
