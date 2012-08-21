require "wednesday/version"

module Wednesday
  module Date
    def next_wednesday
      return self + ((3 - self.wday) % 7)
    end

    def prev_wednesday
      return next_wednesday - 7
    end

    def first_wednesday_of_year
      self.beginning_of_year.next_wednesday
    end
  end
end

class Date
  include Wednesday::Date
end
