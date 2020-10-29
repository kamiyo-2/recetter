class RecipesTag

  include ActiveModel::Model
  attr_accessor :title, :text, :process, :material, :user_id, :image, :name

  with_options presence: true do
    validates :title
    validates :text
    validates :process
    validates :material
    validates :user_id
    validates :name
  end

  def save
    recipe = Recipe.create(title: title, text: text, process: process, material: material, image: image, user_id: user_id)
    tag = Tag.where(name: name).first_or_initialize
    tag.save

    RecipeTagRelation.create(recipe_id: recipe.id, tag_id: tag.id)
  end

end

