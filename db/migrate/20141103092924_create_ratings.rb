class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score
      t.references :movie, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
