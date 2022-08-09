require_relative 'roman-numerals'

RSpec.describe RomanNumeralConverter do
  # it 'should return true' do
  #   subject = described_class.new

  #   expect(subject.run!).to eq(false)
  # end

  describe '#numeral_to_integer' do
    it 'should output 3 if the input is III' do
      subject = described_class.new

      expect(subject.numeral_to_integer('III')).to eq(3)
    end

    it 'should output 11 if the input XI' do
      subject = described_class.new

      expect(subject.numeral_to_integer('XI')).to eq(11)
    end

    it 'should output 4 if the input IV' do
      subject = described_class.new

      expect(subject.numeral_to_integer('IV')).to eq(4)
    end

    it 'should output 44 if the input XLIV' do
      subject = described_class.new

      expect(subject.numeral_to_integer('XLIV')).to eq(44)
    end

    it 'should output 92 if the input XCII' do
      subject = described_class.new

      expect(subject.numeral_to_integer('XCII')).to eq(92)
    end

    it 'should output 490 if the input CDXC' do
      subject = described_class.new

      expect(subject.numeral_to_integer('CDXC')).to eq(490)
    end

    it 'should output 1094 if the input MXCIV' do
      subject = described_class.new

      expect(subject.numeral_to_integer('MXCIV')).to eq(1094)
    end
  end
end
