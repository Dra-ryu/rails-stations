class Admin::MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def new
        @movies = Movie.new
    end
        
    def create
        @movies = Movie.new(movies_params)
        
        # puts @movies
        # puts movies_params

        if @movies.save
            # puts "aaaaaaaaaaaaaaaaa"
            redirect_to "/admin/movies"
        else
            render action "new"
        end
    end

    def movies_params
        params.permit(:name, :year, :is_showing, :description, :image_url)
    end
end
