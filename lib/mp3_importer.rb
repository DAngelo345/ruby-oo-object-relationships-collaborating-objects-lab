require 'pry'
class MP3Importer

    @@all = []
    attr_accessor :path

    def initialize(path)
        @path = path
        @@all << self
    end

    def files
        Dir.chdir(@path) do |songs|
            Dir.glob("*.mp3")
        end
    end
    
    def import 
        #binding.pry
        self.files.each do |file|
        Song.new_by_filename(file)
        end
    end
end