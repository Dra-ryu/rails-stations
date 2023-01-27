class CreateChangeUniqueKeyMovies < ActiveRecord::Migration[6.1]
  def change
    remove_index :movies, [:description], unique: true, length: { description: 255 }
  end
end
