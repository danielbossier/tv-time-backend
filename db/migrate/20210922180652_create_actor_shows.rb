class CreateActorShows < ActiveRecord::Migration[6.1]
  def change
    create_table :actor_shows do |t|
      t.integer :actor_id
      t.integer :show_id

      t.timestamps
    end
  end
end
