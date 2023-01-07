require "music_library"
require "track"

RSpec.describe "intergration" do
    it "adds an instance of track to the library" do
        musiclibrary = MusicLibrary.new
        track = Track.new("Hello there", "Simone")
        musiclibrary.add(track)
        expect(musiclibrary.all).to eq [track]
    end
    it "adds another instance of track to the library" do
        musiclibrary = MusicLibrary.new
        track = Track.new("Hello there", "Simone")
        track_2 = Track.new("You there", "Jervis")
        musiclibrary.add(track)
        musiclibrary.add(track_2)
        expect(musiclibrary.all).to eq [track, track_2]
    end
    it "returns a list of tracks that match the keyword" do
        musiclibrary = MusicLibrary.new
        track = Track.new("Hello there", "Simone")
        track_2 = Track.new("You there", "Jervis")
        musiclibrary.add(track)
        musiclibrary.add(track_2)
        expect(musiclibrary.search("Hello")).to eq [track]      
    end
    it "returns a list of tracks that match the keyword" do
        musiclibrary = MusicLibrary.new
        track = Track.new("Hello there", "Simone")
        track_2 = Track.new("You there", "Jervis")
        track.matches?("erv")
        track_2.matches?("erv")
        musiclibrary.add(track)
        musiclibrary.add(track_2)
        expect(musiclibrary.search("erv")).to eq [track_2]      
    end
end