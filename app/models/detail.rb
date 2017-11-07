# == Schema Information
#
# Table name: details
#
#  id         :integer          not null, primary key
#  quantity   :integer          not null
#  product_id :integer          not null
#  bill_id    :integer          not null
#

class Detail < ApplicationRecord
  belongs_to :product
  belongs_to :bill
end
