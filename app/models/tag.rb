class Tag < ApplicationRecord

  has_many :recipe_tag_relations
  has_many :recipes, through: :tweet_tag_relations

  validates :name, uniqueness: true
end
