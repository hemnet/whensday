require 'spec_helper'
require 'whensday'

describe Whensday do
  describe "class methods" do
    it "should default to today" do
      Date.next_wednesday.should == Date.today.next_wednesday
      Date.prev_wednesday.should == Date.today.prev_wednesday
      Date.this_wednesday.should == Date.today.this_wednesday
      Date.last_wednesday.should == Date.today.last_wednesday
    end
  end

  context "beginning of a year" do
    let(:year) { Date.new(2012,1,1) }

    it "should find the first wednesday" do
      year.first_wednesday_of_year.should == Date.new(2012,1,4)
    end

    it "should find first wednesday of year when it is a wednesday" do
      Date.new(2014,2,12).first_wednesday_of_year.should == Date.new(2014,1,1)
    end

    it "should find the last wednesday" do
      year.last_wednesday_of_year.should == Date.new(2012,12,26)
    end

    it "should find last wednesday of when it is a wednesday" do
      Date.new(2014,2,12).last_wednesday_of_year.should == Date.new(2014,12,31)
    end
  end

  context "an arbitrary wednesday" do
    let(:wednesday) { Date.new(2012,8,29) }

    it "should find next wednesday" do
      wednesday.next_wednesday.should == Date.new(2012,9,5)
    end

    it "should find this wednesday" do
      wednesday.this_wednesday.should == wednesday
    end

    it "should find previous wednesday" do
      wednesday.prev_wednesday.should == Date.new(2012,8,22)
    end

    it "should find last wednesday" do
      wednesday.last_wednesday.should == wednesday
    end
  end

  context "an arbitrary thursday" do
    let(:thursday) { Date.new(2012,8,2) }

    it "should find next wednesday" do
      thursday.next_wednesday.should == Date.new(2012,8,8)
    end

    it "should find this wednesday" do
      thursday.this_wednesday.should == thursday.next_wednesday
    end

    it "should find previous wednesday" do
      thursday.prev_wednesday.should == Date.new(2012,8,1)
    end

    it "should find last wednesday" do
      thursday.last_wednesday.should == thursday.prev_wednesday
    end
  end

  context "an arbitrary tuesday" do
    let(:thursday) { Date.new(2012,8,28) }

    it "should find next wednesday" do
      thursday.next_wednesday.should == Date.new(2012,8,29)
    end

    it "should find this wednesday" do
      thursday.this_wednesday.should == thursday.next_wednesday
    end

    it "should find previous wednesday" do
      thursday.prev_wednesday.should == Date.new(2012,8,22)
    end

    it "should find last wednesday" do
      thursday.last_wednesday.should == thursday.prev_wednesday
    end
  end
end
