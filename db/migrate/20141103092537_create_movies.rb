class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :original_name
      t.text :description
      t.string :director
      t.integer :year

      t.timestamps
    end
  end
end
