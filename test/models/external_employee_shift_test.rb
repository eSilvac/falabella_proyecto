# == Schema Information
#
# Table name: external_employee_shifts
#
#  id                    :integer          not null, primary key
#  date                  :date             not null
#  falabella_employee_id :integer
#  shift_id              :integer
#

require 'test_helper'

class ExternalEmployeeShiftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
