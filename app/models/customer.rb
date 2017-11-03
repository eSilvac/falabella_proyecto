class Customer < ApplicationRecord
  has_many :bills

  enum customer_type: [:natural_customer, :legal_customer]
end
