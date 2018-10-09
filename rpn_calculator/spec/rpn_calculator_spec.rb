require 'rspec'
require 'pry'

class RPNCalculator
  def self.process(expression)
  end
end

RSpec.describe 'RPN Calculator' do
  it 'adds two numbers ' do
    result = RPNCalculator.process("(1 2 +)")

    expect(result).to eq(3)
  end

  xit 'subtracts two numbers' do
    result = RPNCalculator.process("(6 2 -)")

    expect(result).to eq(4)
  end

  xit 'multiplies two numbers' do
    result = RPNCalculator.process("(3 6 *)")

    expect(result).to eq(18)
  end

  xit 'divides two numbers' do
    result = RPNCalculator.process("(14 7 /")

    expect (result).to eq(2)
  end

  xit 'operates with multiple operand' do
    result = RPNCalculator.process("(1 2 + 4 +)")

    expect(result).to eq(7)
  end
end
