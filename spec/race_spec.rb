require 'spec_helper'

RSpec.describe Race do
  subject(:race) {Race.new}
  describe '::new' do
    it 'instantiates two cars' do
      expect(race.cars.length).to eq(2)
    end
    it 'accelerates the cars to random speeds' do
      expect(race.cars[0].speed).to be > 0
      expect(race.cars[1].speed).to be > 0
    end
  end
  describe '#winner' do
    it 'returns the winner' do
      expect(race.winner.speed).to be > race.loser.speed
    end
    it 'is not the loser' do
      expect(race.winner).not_to eq(race.loser)
    end
  end
  describe '#loser' do
    it 'returns the loser' do
      expect(race.loser.speed).to be < race.winner.speed
    end
    it 'is not the winner' do
      expect(race.loser).not_to eq(race.winner)
    end
  end
end
