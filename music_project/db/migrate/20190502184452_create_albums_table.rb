class CreateAlbumsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :band_id, null: false
      t.string :title, null: false
      t.integer :yr, null: false
      t.boolean :live_album, default: false
    end

    add_index :albums, :band_id
  end
end
