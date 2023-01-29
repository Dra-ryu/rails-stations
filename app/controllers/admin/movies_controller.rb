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

    def edit
        @movies = Movie.find(params[:id])
    end

    def update
        @movies = Movie.find(params[:id])
        if @movies.update(movie_params)
            redirect_to "/admin/movies"
        else
            render action "edit"
        end
    end

    private
    def movie_params
        params.require(:movie).permit(:name, :year, :is_showing, :description, :image_url, :id)
    end
end
