class MoviesController < ApplicationController

  before_action :set_q, only: [:index, :search]
  def index
    @movies = Movie.all
  end

  def search
    @results = @q.result
  end

  private

  def set_q
    #  params[:q]→検索時にviewファイルから送られるパラメータ
    @q = Movie.ransack(params[:q])
  end

end
