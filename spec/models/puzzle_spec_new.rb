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

  describe '#matrix' do
    it 'should return matrix view of state' do
       Puzzle.new.matrix.should == Matrix[
        [1,2,3,4],
        [5,6,7,8],
        [9,10,11,12],
        [13,14,15,0]
       ] 
    end  
  end

end 
