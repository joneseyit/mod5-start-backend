class AddLongitudeToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :longitude, :decimal
  end
end
