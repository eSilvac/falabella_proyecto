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
#  floor_id              :integer          not null
#  section_id            :integer          not null
#  shift_id              :integer          not null
#

class FalabellaEmployee < ApplicationRecord
  belongs_to :floor
  belongs_to :section
  belongs_to :shift

  has_many :falabella_employee_shifts
  has_many :bills
end
