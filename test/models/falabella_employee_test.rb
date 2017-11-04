# == Schema Information
#
# Table name: falabella_employees
#
#  falabella_employee_id :integer          not null, primary key
#  first_name            :string(45)       not null
#  last_name             :string(45)       not null
#  phone_number          :string(20)       not null
#  address               :string(45)       not null
#  email                 :string(45)       not null
#  salary                :integer          not null
#  type                  :integer          not null
#  floor_id              :integer
#  section_id            :integer
#  shift_id              :integer
#

require 'test_helper'

class FalabellaEmployeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
