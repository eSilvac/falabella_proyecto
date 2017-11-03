class ExternalEmployee < ApplicationRecord
  belongs_to :company
  belongs_to :section
  belongs_to :shift
end
