require 'spec_helper'
require 'whensday'

describe Whensday do
  context "beginning of a year" do
    let(:year) { Date.new(2012,1,1) }

    it "should find the first wednesday" do
      year.first_wednesday_of_year.should == Date.new(2012,1,4)
    end
  end

  context "an arbitrary sunday" do
    let(:sunday) { Date.new(2012,8,26) }

    it "should find next wednesday" do
      sunday.next_wednesday.should == Date.new(2012,8,29)
    end

    it "should find previous wednesday" do
      sunday.prev_wednesday.should == Date.new(2012,8,22)
    end
  end

  context "an arbitrary wednesday" do
    let(:wednesday) { Date.new(2012,8,29) }

    it "should find next wednesday" do
      wednesday.next_wednesday.should == Date.new(2012,9,5)
    end

    it "should find previous wednesday" do
      wednesday.prev_wednesday.should == Date.new(2012,8,22)
    end
  end

  context "an arbitrary thursday" do
    let(:thursday) { Date.new(2012,8,2) }

    it "should find next wednesday" do
      thursday.next_wednesday.should == Date.new(2012,8,8)
    end

    it "should find previous wednesday" do
      thursday.prev_wednesday.should == Date.new(2012,8,1)
    end
  end
end
