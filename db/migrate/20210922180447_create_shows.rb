class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.integer :year
      t.string :description
      t.string :creator
      t.integer :seasons
      t.string :network
      t.boolean :favorite
      t.integer :user_id

      t.timestamps
    end
  end
end
