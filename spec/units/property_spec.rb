require 'property'

describe Property do

  subject(:property) { described_class.create(
    :name => "Test house",
    :description => "Test description",
    :price => 150
    )}

    describe '#name' do
      it 'returns property name' do
        expect(property.name).to eq 'Test house'
      end
    end

    describe '#description' do
      it 'returns property description' do
        expect(property.description).to eq 'Test description'
      end
    end

    describe '#price' do
      it 'returns property price' do
        expect(property.price).to eq 150
      end
    end
end
