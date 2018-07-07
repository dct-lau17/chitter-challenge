require 'peep'

describe Peep do

  describe '.all' do
    it 'returns all peeps in an array' do
      peep_1 = Peep.create(comment: 'Wow cool peep')
      peep_2 = Peep.create(comment: 'It is a Twitter clone')
      peep_3 = Peep.create(comment: 'Call it Chitter')

      expected_peeps = [
        peep_1,
        peep_2,
        peep_3
      ]

      expect(Peep.all).to eq expected_peeps

    end
  end

  describe '.create' do
    it 'creates a new peep' do
      peep = Peep.create(comment: "this is a peep")
      expect(Peep.all).to include peep
    end
  end

  describe '#==' do
      it 'two Bookmarks are equal if their IDs match' do
        peep1 = Peep.new('comment', '2018-07-07 19:11:46', 1)
        peep2 = Peep.new('comment', '2018-07-07 19:11:46', 1)
        expect(peep1).to eq peep2
      end
    end
end
