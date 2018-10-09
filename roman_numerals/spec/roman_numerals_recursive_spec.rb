require 'rspec'
require 'pry'

class RomanNumeralRecursive
  # ROMAN_NUMERAL_MAP = {
    # 1000 => "M",
    # 900  => "CM",
    # 500  => "D",
    # 400  => "CD",
    # 100  => "C",
    # 90   => "XC",
    # 50   => "L",
    # 40   => "XL",
    # 10   => "X",
    # 9    => "IX",
    # 5    => "V",
    # 4    => "IV",
    # 1    => "I"
  # }

  ROMAN_NUMERAL_MAP = {
    "M"   =>  1000,
    "CM"  =>  900,
    "D"   =>  500,
    "CD"  =>  400,
    "C"   =>  100,
    "XC"  =>  90,
    "L"   =>  50,
    "XL"  =>  40,
    "X"   =>  10,
    "IX"  =>  9,
    "V"   =>  5,
    "IV"  =>  4,
    "I"   =>  1
  }

  def self.convert(arabic)
    remainder = arabic

    ROMAN_NUMERAL_MAP.inject("") do |converted, (roman, decimal)|
      quotient, remainder = remainder.divmod(decimal)
      converted << roman * quotient
    end
  end
end

RSpec.describe 'Roman Numerals' do
  examples =[
      [1,'I'],
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
      [844, 'DCCCXLIV']
      ]

  examples.each do |arabic, roman|
    it "converts #{arabic} to #{roman}" do
      result = RomanNumeralRecursive.convert(arabic)
      expect(result).to eq(roman)
    end
  end
end
