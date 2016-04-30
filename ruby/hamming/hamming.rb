class Hamming
  VERSION = 1

  def self.compute(strand_1, strand_2)
    raise ArgumentError unless strand_1.length == strand_2.length
    strand_1.chars.each_index.count { |i| strand_1[i] != strand_2[i] }
  end
end
