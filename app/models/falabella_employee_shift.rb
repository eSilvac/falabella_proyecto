# == Schema Information
#
# Table name: falabella_employee_shifts
#
#  id                    :integer          not null, primary key
#  date                  :date             not null
#  falabella_employee_id :integer          not null
#  shift_id              :integer          not null
#

class FalabellaEmployeeShift < ApplicationRecord
  belongs_to :shift
  belongs_to :falabella_employee
end
