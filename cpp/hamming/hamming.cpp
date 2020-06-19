#include <stdexcept>
#include "hamming.h"

using std::string;

namespace hamming {
  int compute(string strand_1, string strand_2) {
    if (strand_1.size() != strand_2.size()) {
      throw std::domain_error("Strands must be of same length");
    }

    int count = 0;

    for(string::size_type i = 0; i < strand_1.size(); i++) {
      if(strand_1[i] != strand_2[i]) {
        count++;
      }
    }

    return count;
  }
}  // namespace hamming
