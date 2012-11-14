require "whensday/version"
require "active_support/core_ext/date/calculations"
require "date"

module Whensday
  module Date
    def self.included(base)
      base.send :extend, ClassMethods
      base.send :include, InstanceMethods
    end
    module InstanceMethods
      def next_wednesday
        self + ((2 - self.wday) % 7) + 1
      end

      def this_wednesday
        self + ((3 - self.wday) % 7)
      end

      def prev_wednesday
        self - (((3 + self.wday) % 7) + 1)
      end

      def last_wednesday
        self - ((4 + self.wday) % 7)
      end

      def first_wednesday_of_year
        beginning_of_year.this_wednesday
      end

      def last_wednesday_of_year
        end_of_year.last_wednesday
      end
    end
    module ClassMethods
      def next_wednesday
        today.next_wednesday
      end

      def this_wednesday
        today.this_wednesday
      end

      def prev_wednesday
        today.prev_wednesday
      end

      def last_wednesday
        today.last_wednesday
      end
    end
  end
end

class Date
  include Whensday::Date
end
