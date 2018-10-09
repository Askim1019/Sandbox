require 'rspec'
require 'pry'

class RomanNumeral
  ROMAN_NUMERAL_MAP = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I",
    0 => ""
  }

  def self.convert(arabic)  
    converted = ""
    
    ROMAN_NUMERAL_MAP.keys.each do |integer|
      return converted if arabic == 0
      quotient = arabic / integer
      modulus = arabic % integer
      converted += ROMAN_NUMERAL_MAP[integer] * quotient
      arabic = modulus  
    end
    
    converted
  end
end

RSpec.describe 'Roman Numerals' do
  examples =
    [ [1,'I'],
      [2,'II'],
      [3,'III'],
      [4,'IV'],
      [5,'V'],
      [6,'VI'],
      [7,'VII'],
      [8,'VIII'],
      [9,'IX'],
      [10, 'X'],
      [11, 'XI'],
      [14, 'XIV'],
      [15, 'XV'],
      [16, 'XVI'],
      [18, 'XVIII'],
      [19, 'XIX'],
      [20, 'XX'],
      [21, 'XXI'],
      [30, 'XXX'],
      [40, 'XL'],
      [844, 'DCCCXLIV']]

  examples.each do |arabic, roman|
    it "converts #{arabic} to #{roman}" do
      result = RomanNumeral.convert(arabic)
      expect(result).to eq(roman)
    end
  end
end
