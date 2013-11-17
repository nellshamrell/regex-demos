require 'spec_helper'

describe RegexDemo do

  let(:demo) { RegexDemo.new }

  context "when using /.../" do
    it "converts the string to a regex" do
      result = demo.convert_with_slashes('something')
      result.class.should == Regexp
    end

    it "includes metacharacters" do
      result = demo.convert_with_slashes('\w+\d')
      result.class.should == Regexp
      result.should == /\w+\d/
    end
  end

  context "when using Regexp.new" do
    it "converts the string to a regex" do
      result = demo.convert_with_regexp_new('something')
      result.class.should == Regexp
    end

    it "includes metacharacters" do
      result = demo.convert_with_regexp_new('\w+\d')
      result.should == /\w+\d/
    end
  end

  context "when using the %r syntax" do

    it "converts the string to a regex" do
      result = demo.convert_with_r_syntax('something')
      result.class.should == Regexp
    end

    it "includes metacharacters" do
      result = demo.convert_with_r_syntax('\w+\d')
      result.should == /\w+\d/
    end
  end
end
