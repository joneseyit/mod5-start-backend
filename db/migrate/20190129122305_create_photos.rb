class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :img
      t.text :caption
      t.references :user, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
