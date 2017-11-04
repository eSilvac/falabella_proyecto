# == Schema Information
#
# Table name: companies
#
#  company_id   :integer          not null, primary key
#  name         :string(45)       not null
#  phone_number :string(20)       not null
#

class Company < ApplicationRecord
  has_many :external_employees
end
