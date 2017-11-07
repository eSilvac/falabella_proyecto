# == Schema Information
#
# Table name: products
#
#  product_id :integer          not null, primary key
#  name       :string(255)      not null
#  value      :integer          not null
#

class Product < ApplicationRecord
  has_many :details
end
