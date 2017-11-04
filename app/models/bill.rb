# == Schema Information
#
# Table name: bills
#
#  bill_id                :integer          not null, primary key
#  payment_type           :integer          not null
#  date                   :date             not null
#  customer_id            :integer
#  falabella_employees_id :integer          not null
#

class Bill < ApplicationRecord
  belongs_to :customer

  enum payment_type: [:cash, :credit, :bonus]

end
