class Like < ApplicationRecord
  belongs_to :post, :optional => true
end
