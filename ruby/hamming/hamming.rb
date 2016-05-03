class Hamming
  VERSION = 1

  def self.compute(strand_1, strand_2)
    strand_of_unequal_length unless strand_1.length == strand_2.length
    (0...strand_1.length).count { |i| strand_1[i] != strand_2[i] }
  end

  def self.strand_of_unequal_length
    raise ArgumentError, 'Strands must be of same length'
  end

  private_class_method :strand_of_unequal_length
end
