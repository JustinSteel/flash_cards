require './lib/turn'

RSpec.describe Turn do
    it 'exists' do
        turn = Turn.new("Juneau", "Juneau")
    
        expect(turn).to be_instance_of(Turn)
      end
    it 'returns the guess' do
        turn = Turn.new("Juneau", "Juneau")

        expect(turn.guess).to eq("Juneau")
    end
    it 'returns the Card'
        turn = Turn.new("Juneau", "Juneau")

        expect(turn.card).to eq("Juneau")
    end
    it 'returns a boolean indicating if the guess matched the answer on the Card'
        turn = Turn.new("Juneau", "Juneau")

        expect(turn.correct?). to be(true)
    end
    it 'returns "Correct!" or "Incorrect." based on whether the guess was correct or not.'
    turn = Turn.new("Juneau", "Juneau")
    
    expect(turn.feedback).to eq("Correct!")
end