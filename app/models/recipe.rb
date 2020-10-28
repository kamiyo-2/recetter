class Recipe < ApplicationRecord

  has_many :recipe_tag_relations
  has_many :tags, through: :tweet_tag_relations
  belongs_to :user
  has_one_attached :image

end
