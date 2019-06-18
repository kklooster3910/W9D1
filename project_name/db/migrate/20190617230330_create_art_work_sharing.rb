class CreateArtWorkSharing < ActiveRecord::Migration[5.2]
  def change
    create_table :art_work_sharings do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null:false

      t.timestamps
    end

    add_index :art_work_sharings, [:artwork_id, :viewer_id], unique: true
    add_index :art_work_sharings, :artwork_id
    add_index :art_work_sharings, :viewer_id
  end
end
