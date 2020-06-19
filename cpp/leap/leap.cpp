#include "leap.h"

namespace leap {
  bool is_leap_year(unsigned int year) {
    if ((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0)))
      return true;

    return false;
  }
}  // namespace leap
