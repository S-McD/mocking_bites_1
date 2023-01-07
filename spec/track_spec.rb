require "track"

RSpec.describe Track do
    it "matches a keyword" do
        new_track = Track.new("Hello there", "Simone")
        result = new_track.matches?("Hello")
        expect(result).to eq true
    end
    it "matches a different keyword" do
        new_track = Track.new("Hello there", "Simone")
        result = new_track.matches?("erv")
        expect(result).to eq false
    end
end