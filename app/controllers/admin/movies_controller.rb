class Admin::MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def new
        @movies = Movie.new
    end
        
    def create
        # Movieモデルを初期化し、newの中にmovie_paramsを指定
        @movies = Movie.new(movie_params)

        if @movies.save
            redirect_to "/admin/movies"
        else
            render action "new"
        end
    end

    def movie_params
        params.permit(:name, :year, :is_showing, :description, :image_url)
    end
end
