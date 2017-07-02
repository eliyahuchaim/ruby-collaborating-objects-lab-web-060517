class MP3Importer

  attr_accessor :path, :files

  @@all = []

  def initialize(path)
    @path = path
  end

  def import
    f = self.files

    f.each do |file|
    Song.new_by_filename(file)
    end
  end

  def files
    @@all << Dir.glob("#{@path}/*")
    @@all.flatten!
    @@all.map! {|song| song.gsub("#{@path}/", '')}
  end


end
