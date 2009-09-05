require File.expand_path(File.dirname(__FILE__) + '/../../app/models/puzzle.rb')

describe Puzzle do
  describe '#shuffel' do
    it "should return shuffled matrix" do
      m = Puzzle.shuffle
    end
  end
end
