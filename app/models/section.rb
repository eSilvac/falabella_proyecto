# == Schema Information
#
# Table name: sections
#
#  section_id    :integer          not null, primary key
#  name          :string(45)       not null
#  department_id :integer          not null
#

class Section < ApplicationRecord
  belongs_to :department

  has_many :external_employees
  has_many :falabella_employees
end
