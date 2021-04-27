class Artist < ActiveRecord::Base
    has_many :songs

    def self.list
        artist_arry = []
        Artist.all.each do |artist|
            artist_arry << [artist.name, artist.id]
        end
        artist_arry
    end

end