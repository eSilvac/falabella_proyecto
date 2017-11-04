# == Schema Information
#
# Table name: products
#
#  product_id :integer          not null, primary key
#  value      :integer          not null
#

class Product < ApplicationRecord
  has_many :details
end
