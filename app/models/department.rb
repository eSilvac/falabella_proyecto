# == Schema Information
#
# Table name: departments
#
#  department_id :integer          not null, primary key
#  name          :string(45)       not null
#  floor_id      :integer          not null
#

class Department < ApplicationRecord
  belongs_to :floor
  has_many :sections
end
