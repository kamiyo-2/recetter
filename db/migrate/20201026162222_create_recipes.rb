class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string      :title,        null: false
      t.text        :text,         null: false
      t.text        :process,      null: false
      t.text        :material,     null: false
      t.references  :user,         foreign_key: true
      t.timestamps
    end
  end
end


