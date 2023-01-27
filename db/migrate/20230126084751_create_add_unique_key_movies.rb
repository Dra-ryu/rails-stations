class CreateAddUniqueKeyMovies < ActiveRecord::Migration[6.1]
  def change
    add_index :movies, [:description], unique: true, length: { description: 255 }
  end
end
