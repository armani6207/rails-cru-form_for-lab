class Genre < ActiveRecord::Base
    has_many :songs

    def self.list
        genre_arry = []
        Genre.all.each do |genre|
            genre_arry << [genre.name, genre.id]
        end
        genre_arry
    end

end