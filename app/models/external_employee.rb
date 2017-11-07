# == Schema Information
#
# Table name: external_employees
#
#  external_employee_id :integer          not null, primary key
#  first_name           :string(45)       not null
#  last_name            :string(45)       not null
#  phone_number         :string(20)       not null
#  address              :string(45)       not null
#  email                :string(45)       not null
#  salary               :integer          not null
#  company_id           :integer          not null
#  section_id           :integer          not null
#  shift_id             :integer          not null
#

class ExternalEmployee < ApplicationRecord
  belongs_to :company
  belongs_to :section
  belongs_to :shift

  has_many :external_employee_shifts
end
