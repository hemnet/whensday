require "whensday/version"
require "active_support/core_ext/date/calculations"
require "date"

module Whensday
  module Date
    def next_wednesday
      return self + ((2 - self.wday) % 7) + 1
    end

    def prev_wednesday
      return self - (((3 + self.wday) % 7) + 1)
    end

    def first_wednesday_of_year
      self.beginning_of_year.next_wednesday
    end
  end
end

class Date
  include Whensday::Date
end
