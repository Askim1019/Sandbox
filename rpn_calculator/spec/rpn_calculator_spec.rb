require 'rspec'
require 'pry'

RSpec.describe 'RPN Calculator' do
  it 'adds two numbers together' do
    result = RPNCalculator.process("(1 2 +)")

    expect(result).to eq(3)
  end

  xit 'operates with multiple operand' do
    result = RPNCalculator.process("(1 2 + 4 +)")

    expect(result).to eq(7)
  end
end
