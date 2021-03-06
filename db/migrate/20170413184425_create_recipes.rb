class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :summary
      t.text :description
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
