require "music_listening"

RSpec.describe MusicListening
  context "given no tracks" do
    it "returns an empty list" do
      music_listening = MusicListening.new
      expect(music_listening.list).to eq []
    end
  end

  context "given one track" do
    it "returns a list of one track" do
      music_listening = MusicListening.new
      music_listening.add("Stairway to Heaven")
      expect(music_listening.list).to eq ["Stairway to Heaven"]
    end
  end

  context "given some tracks" do
    it "returns a list of the tracks" do
      music_listening = MusicListening.new
      music_listening.add("Stairway to Heaven")
      music_listening.add("The Rover")
      music_listening.add("In My Time of Dying")
      expect(music_listening.list).to eq ["Stairway to Heaven", "The Rover", "In My Time of Dying"]
    end
  end
