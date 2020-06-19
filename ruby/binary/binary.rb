# frozen_string_literal: true

# Write your code for the 'Binary' exercise in this file. Make the tests in
# `binary_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/binary` directory.
class Binary
  def self.to_decimal(number)
    raise ArgumentError if number =~ /[^01]/

    n = number.length - 1
    number.chars.each_with_index.sum { |c, idx| Integer(c) * 2**(n - idx) }
  end
end
