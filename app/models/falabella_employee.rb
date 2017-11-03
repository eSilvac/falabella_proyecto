class FalabellaEmployee < ApplicationRecord
  belongs_to :floor
  belongs_to :section
  belongs_to :shift
end
