class AddImageToMovie < ActiveRecord::Migration
  def change
    add_attachment :movies, :image
  end
end
