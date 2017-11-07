# == Schema Information
#
# Table name: external_employee_shifts
#
#  id                   :integer          not null, primary key
#  date                 :date             not null
#  external_employee_id :integer          not null
#  shift_id             :integer          not null
#

class ExternalEmployeeShift < ApplicationRecord
  belongs_to :external_employee
  belongs_to :shift
end
