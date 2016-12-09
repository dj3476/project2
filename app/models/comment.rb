class Comment < ApplicationRecord
  belongs_to :user
  scope :rating_desc, -> { order(rating: :desc) }

  
  belongs_to :product
  scope :rating_desc, -> { order(rating: :desc) }

end
