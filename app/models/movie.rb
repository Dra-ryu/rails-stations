class Movie < ApplicationRecord
    def self.search(search)
        if search
            Movie.where(['content LIKE ?', "%#{search}%"])
        else
            Movie.all
        end
    end
end
