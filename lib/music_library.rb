class MusicLibrary
    def initialize
      @tracklist = []
    end
  
    def add(track) 
        @tracklist << track
    end
  
    def all
      return @tracklist
    end
    
    def search(keyword) 
        matches = @tracklist.select { |track| track.matches?(keyword) == true}
    end
end