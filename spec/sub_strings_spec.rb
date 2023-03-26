require './spec/spec_helper' # this is the path to the spec_help file
require_relative '../script/script.rb' # this is the path to the script to run.


RSpec.describe 'Substrings tests' do
  describe 'Substrings test' do

    let (:dictionary) do 
      ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    end

    it 'comparing strings with only 1 word' do
      expected_output = { "below" => 1, "low" => 1 }
      expect(substrings("below", dictionary)).to eq(expected_output)
    end

    it 'comparing strings with multiple words' do
      expected_output = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
      expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq(expected_output)
    end


  end
end
