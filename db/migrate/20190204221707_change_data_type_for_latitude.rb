class ChangeDataTypeForLatitude < ActiveRecord::Migration[5.2]
  def change
    change_table :photos do |t|
      t.change :latitude, :decimal, { precision: 10, scale: 6 }
    end
  end
end
