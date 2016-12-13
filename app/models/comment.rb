class Comment < ApplicationRecord
  belongs_to :user
  scope :rating_desc, -> { order(rating: :desc) }
  
  belongs_to :product
  scope :rating_desc, -> { order(rating: :desc) }

  validates :body, presence: true
	  validates :user, presence: true
	  validates :product, presence: true
	  validates :rating, numericality: { only_integer: true }


end
