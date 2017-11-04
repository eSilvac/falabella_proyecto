# == Schema Information
#
# Table name: sections
#
#  section_id    :integer          not null, primary key
#  name          :string(45)       not null
#  department_id :integer
#  floor_id      :integer
#

class Section < ApplicationRecord
  belongs_to :floor
  belongs_to :department

  has_many :external_employees
  has_many :falabella_employees
end
