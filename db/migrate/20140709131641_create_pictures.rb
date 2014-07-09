class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :filename
      t.references :listing, index: true

      t.timestamps
    end
  end
end
