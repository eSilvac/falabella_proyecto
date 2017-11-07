# == Schema Information
#
# Table name: customers
#
#  customer_id   :integer          not null, primary key
#  first_name    :string(25)       not null
#  last_name     :string(25)       not null
#  email         :string(45)       not null
#  address       :string(45)       not null
#  customer_type :integer          not null
#  phone_number  :string(255)      not null
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
