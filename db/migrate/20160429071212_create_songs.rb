class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :track_number
      t.references :album, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
