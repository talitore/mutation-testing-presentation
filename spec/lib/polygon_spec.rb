describe Polygon do
  let(:polygon) { Polygon.new }
  let(:side) { Side.new(2) }

  context '#side' do
    before { polygon.add_side Side.new(1) }

    context 'that exists' do
      it 'should return the side' do
        expect(polygon.side(1)).to be_a(Side)
      end
    end

    context 'that doesnt exist' do
      it 'should raise error' do
        expect{ polygon.side(2) }.to raise_error(/Polygon doesn't have a side with number: 2/)
      end
    end
  end

  context '#add_side' do
    it 'should return the polygon' do
      expect(polygon.add_side(side)).to be(polygon)
    end

    it 'should add a side to polygon' do
      polygon.add_side(side)
      expect(polygon.sides).to include(side)
    end

    it 'should add the side to the index' do
      polygon.add_side(side)
      expect(polygon.index).to include(2 => side)
    end
  end
end
