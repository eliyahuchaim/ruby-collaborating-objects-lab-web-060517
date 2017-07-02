class Song

    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end


    def self.new_by_filename(file_name)
      # binding.pry
    #   file_name.each do |file|
    #     fi = file.split("-")
    #     # binding.pry
    #     new_song = Song.new(fi[1].strip)
    #     @@all << new_song
    #   end
    # end
      file = file_name.split("-")
      the_artist = file[0].strip
      song = file[1].strip

      new_song = Song.new(song)
      # binding.pry
      artist = Artist.find_or_create_by_name(the_artist)
      artist.songs << new_song
      # binding.pry
      new_song.artist = artist
      # @@all << new_song
      new_song
    end


    def self.all
      @@all
    end




end
