require 'test_helper'

describe Translator do
  describe '#to_pig_latin' do
    it 'should translate single words' do
      Translator.to_pig_latin('dog').must_equal('ogday')
      Translator.to_pig_latin('apple').must_equal('appleway')
    end

    it 'should translate multiple words' do
      Translator.to_pig_latin('matz is nice').must_equal('atzmay isway icenay')
    end
  end

  describe '#to_english' do
    it 'should translate single words' do
      Translator.to_english('ogday').must_equal('dog')
      Translator.to_english('appleway').must_equal('apple')
    end

    it 'should translate multiple words' do
      Translator.to_english('atzmay isway icenay').must_equal('matz is nice')
    end
  end
end
