# == Schema Information
#
# Table name: sections
#
#  section_id    :integer          not null, primary key
#  name          :string(45)       not null
#  department_id :integer
#  floor_id      :integer
#

require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
