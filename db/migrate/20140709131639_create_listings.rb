class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :body
      t.string :category

      t.timestamps
    end
  end
end
