require File.expand_path(File.dirname(__FILE__) + '/../../app/models/puzzle.rb')

describe Puzzle do

  describe '#new' do
    it 'should return puzzle with new state' do
      Puzzle.new.state.should == (1..15).to_a << 0
    end  
     it 'should return puzzle with not new state' do
      Puzzle.new(true).state.should_not == (1..15).to_a << 0
    end  
  end

end 
