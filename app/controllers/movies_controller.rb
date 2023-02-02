class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def search
    #Viewのformで取得したパラメータをモデルに渡す
    @movies = Movie.search(params[:search])
  end

end
