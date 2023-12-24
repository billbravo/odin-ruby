require_relative 'substrings'

RSpec.describe 'Project: Sub string' do
  describe 'Checking output for given string [below]' do

    it 'Test 1' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      string = "below"
      expected = { "below" => 1, "low" => 1 }
      expect(substrings(string, dictionary)).to eq(expected)
    end
  end
  describe "Checking output for given string [Howdy partner, sit down! How's it going?]" do

    it "Test 2" do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      string = "Howdy partner, sit down! How's it going?"
      expected = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
      expect(substrings(string, dictionary)).to eq(expected)
    end
  end
end
  
  