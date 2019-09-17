class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.date :deadline
      t.string :country
      t.string :typeofscholarship
      t.string :institute
      t.string :benefits
      t.string :elgibilities
      t.string :process
      t.string :url

      t.timestamps
    end
  end
end
