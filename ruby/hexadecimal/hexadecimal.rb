# frozen_string_literal: true

class Hexadecimal
  def initialize(input)
    @invalid = input =~ /[^0123456789abcdef]/
    @chars = input.chars
    @n = input.length - 1
  end

  def to_decimal
    return 0 if invalid

    chars.each_with_index.sum { |c, idx| int(c) * 16**(n - idx) }
  end

  private

  attr_reader :chars, :n, :invalid

  def int(char)
    return Integer(char) unless char =~ /[a-f]/

    mapping = {
      'a': 10,
      'b': 11,
      'c': 12,
      'd': 13,
      'e': 14,
      'f': 15
    }

    mapping[char.to_sym]
  end
end
