# == Schema Information
#
# Table name: bills
#
#  bill_id               :integer          not null, primary key
#  payment_type          :integer          not null
#  date                  :date             not null
#  customer_id           :integer          not null
#  falabella_employee_id :integer          not null
#

require 'test_helper'

class BillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
