require "music_library"

RSpec.describe MusicLibrary do
    it "adds multiple instances of track to the library" do
        musiclibrary = MusicLibrary.new
        faketrack_1 = double :fake_track
        faketrack_2 = double :fake_track
        musiclibrary.add(faketrack_1)
        musiclibrary.add(faketrack_2)
        expect(musiclibrary.all).to eq [faketrack_1, faketrack_2]
    end
    it "returns a list of tracks that match the keyword" do
        musiclibrary = MusicLibrary.new
        faketrack_1 = double :fake_track, matches?: true
        faketrack_2 = double :fake_track, matches?: false
        musiclibrary.add(faketrack_1)
        musiclibrary.add(faketrack_2)
        expect(musiclibrary.search("Hello")).to eq [faketrack_1]     
    end
end