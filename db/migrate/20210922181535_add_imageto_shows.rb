class AddImagetoShows < ActiveRecord::Migration[6.1]
  def change
    add_column :shows, :image, :string
  end
end
