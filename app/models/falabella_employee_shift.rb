# == Schema Information
#
# Table name: falabella_employee_shifts
#
#  id                    :integer          not null, primary key
#  date                  :date             not null
#  falabella_employee_id :integer
#  shift_id              :integer
#

class FalabellaEmployeeShift < ApplicationRecord
end
