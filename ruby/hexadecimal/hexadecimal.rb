# frozen_string_literal: true

class Hexadecimal
  DIGITS = '0123456789abcdef'

  def initialize(input)
    @input = input
    @n = input.length - 1
  end

  def to_decimal
    chars.each_with_index.sum { |c, idx| DIGITS.index(c) * 16**(n - idx) }
  end

  private

  attr_reader :input, :n

  def chars
    input =~ /[^0-9a-f]/ ? [] : input.chars
  end
end
