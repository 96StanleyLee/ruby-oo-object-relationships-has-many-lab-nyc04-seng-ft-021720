class Artist

    attr_accessor :name
    
    @@names = []
    def initialize(name)
        @name = name 
        @@names.push(self)
    end 

    def self.all 
        @@names 
    end 

    def songs 
        Song.all.select do |songs|
            songs.artist == self
        end 
    end 

    def add_song(song)
        song.artist = self 
    end 


    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self 
    end 

    def self.song_count
        Song.all.count
    end 

    

end 