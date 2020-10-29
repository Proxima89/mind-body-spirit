class Comment < ApplicationRecord
  belongs_to :affiliate
  has_one :user
end
