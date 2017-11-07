# == Schema Information
#
# Table name: external_employee_shifts
#
#  id                   :integer          not null, primary key
#  date                 :date             not null
#  external_employee_id :integer          not null
#  shift_id             :integer          not null
#

require 'test_helper'

class ExternalEmployeeShiftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
