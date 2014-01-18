class Translation < ActiveRecord::Base
  
  validates_presence_of :english, :pig_latin

  def english=(value)
    write_attribute(:english, value)
    write_attribute(:pig_latin, Translator.to_pig_latin(value))
  end

  def pig_latin=(value)
    write_attribute(:pig_latin, value)
    write_attribute(:english, Translator.to_english(value))
  end
end
