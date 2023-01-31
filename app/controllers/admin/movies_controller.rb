class Admin::MoviesController < ApplicationController
    def index
        @movies = Movie.all
        puts @movies
    end

    def new
        @movies = Movie.new
    end
        
    def create
        # Movieモデルを初期化し、newの中にmovie_paramsを指定
        @movies = Movie.new(movie_create_params)
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
        begin 
            @movies.update(movie_update_params)
            redirect_to "/admin/movies"
        rescue
            redirect_to "/admin/movies"
        end
    end

    def destroy
        @movies = Movie.find(params[:id])
        @movies.destroy
        redirect_to "/admin/movies"
    end

    private
    def movie_create_params
        params.permit(:name, :year, :is_showing, :description, :image_url, :id)
    end
    def movie_update_params
        params.require(:movie).permit(:name, :year, :is_showing, :description, :image_url, :id)
    end
end
