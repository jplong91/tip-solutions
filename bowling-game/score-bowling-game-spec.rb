require_relative 'score-bowling-game'

RSpec.describe BowlingGame do
  describe "#total_score" do
    context "simple game, no spares or strikes" do
      it "returns the sum of all the pins" do
        pins = [1,5,  4,4,  8,0,  5,3,  0,0,  4,5,  2,3,  8,1,  7,1,  1,1]
        subject = described_class.new(pins)

        expect(subject.total_score).to eq(63)
      end
    end
  end
end
