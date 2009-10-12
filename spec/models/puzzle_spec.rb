require File.expand_path(File.dirname(__FILE__) + '/../../app/models/puzzle.rb')

describe Puzzle do

  describe '#new' do
    before :all do
      @def_state = (1..15).to_a << 0
    end 
    it 'should return puzzle with new state' do
      Puzzle.new.state.should == @def_state
    end  
    context 'randomizing state' do
      it 'should return puzzle with not new state' do
        Puzzle.new(:random => true).state.should_not == @def_state
      end  
       it 'should return random puzzle with not new state' do
        Puzzle.new(:random => true).state.should_not ==  Puzzle.new(:random => true).state
       end  
    end
    context 'dimension state' do
      it 'should return default new state when dim=0' do
        Puzzle.new(:dim => 0).state.should == @def_state
      end  
      it "should return default new state when dim='qwerty'" do
        Puzzle.new(:dim => 'qwerty').state.should == @def_state
      end  
      it "should return new state with dim =3  when dim=3" do
        Puzzle.new(:dim => 3).state.should == (1..8).to_a << 0
      end  
    end  
  end

  describe '#matrix' do
    it 'should return matrix view of state' do
       Puzzle.new.matrix.should ==
         [
          [1, 2, 3, 4],
          [5, 6, 7, 8],
          [9, 10, 11, 12],
          [13, 14, 15, 0]
       ] 
    end  
  end

  describe '#try_move!' do
    before :all do
      @def_state = (1..15).to_a << 0
    end  
    before :each do
      @puzzle = Puzzle.new
    end
    context 'should move' do
      it 'in one row' do
        @puzzle.try_move! 14
        @puzzle.state.should == (1..13).to_a << 0 << 14 << 15
        @puzzle.error.should be_nil
        @puzzle.notice.should be_nil
      end  
      it 'in one col' do
        @puzzle.try_move!(8)
        @puzzle.state.should == [1,2,3,4,5,6,7,0,9,10,11,8,13,14,15,12]
        @puzzle.error.should be_nil
        @puzzle.notice.should be_nil
      end  
      it 'string number' do
        @puzzle.try_move! '14'
        @puzzle.state.should == (1..13).to_a << 0 << 14 << 15
        @puzzle.error.should be_nil
        @puzzle.notice.should be_nil
      end  
    end  
    context 'should not move' do
      it 'not movable value' do
        @puzzle.try_move! 1
        @puzzle.state.should == @def_state
        @puzzle.error.should == 'Not movable value: 1'
        @puzzle.notice.should be_nil
      end  
      it 'not existent value' do
        @puzzle.try_move! 'bad_value'
        @puzzle.state.should == @def_state
        @puzzle.error.should == 'Bad value: bad_value'
        @puzzle.notice.should be_nil
      end  
    end  
    it 'completed' do
      @puzzle.try_move! 15
      @puzzle.try_move! 15
      @puzzle.state.should == @def_state
      @puzzle.error.should == nil
      @puzzle.notice.should == 'You are win for 2 steps'
    end  
  end 

end 
