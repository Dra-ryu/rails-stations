class CreateAddUniqueKeyMovieNames < ActiveRecord::Migration[6.1]
  def change
    add_index :movies, [:name], unique: true
  end
end
