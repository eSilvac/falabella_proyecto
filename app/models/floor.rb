# == Schema Information
#
# Table name: floors
#
#  floor_id :integer          not null, primary key
#

class Floor < ApplicationRecord
  has_many :departments
  has_many :falabella_employees
end
