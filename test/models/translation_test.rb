require 'test_helper'

describe Translation do

  subject { Translation.new }

  describe :validations do
    before { subject.valid? }
    it 'should validate presence of pig_latin and english' do
      subject.errors.must_include(:pig_latin)
      subject.errors.must_include(:english)
    end
  end
  describe :english= do
    before { subject.english = 'go beer' }
    it 'should set the english and pig_latin attribute' do
      subject.english.must_equal 'go beer'
      subject.pig_latin.must_equal 'ogay eerbay'
    end
  end

  describe :pig_latin= do
    before { subject.pig_latin = 'ubyray isway oolcay' }
    it 'should set the pig_latin and english attribute' do
      subject.pig_latin.must_equal 'ubyray isway oolcay'
      subject.english.must_equal 'ruby is cool'
    end
  end

end
