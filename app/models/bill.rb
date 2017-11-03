class Bill < ApplicationRecord
  belongs_to :customer

  enum payment_type: [:cash, :credit, :bonus]

end
