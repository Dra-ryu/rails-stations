class CreateRemoveIndexMovieNames < ActiveRecord::Migration[6.1]
  def change
    remove_index :movies, :name
  end
end
