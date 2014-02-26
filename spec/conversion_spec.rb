require 'spec_helper'

describe BaseConversion do

  describe "Base 2 - binary converter" do
    before do
      @binary_converter = BaseConversion.new(2, BaseRange::BASE_2)
    end

    it "should convert number to base 2 string" do
      binary_num = @binary_converter.convert_to_string(99)
      binary_num.should == "1100011"
    end

    it "should convert string to base 10 number" do
      decimal_num = @binary_converter.convert_to_number("1100011")
      decimal_num.should == 99
    end
  end

  describe "Base 26 - alphabet converter" do
    before do
      @alpha_converter= BaseConversion.new(26, BaseRange::BASE_26)
    end

    it "should convert number to base 2 string" do
      shortened = @alpha_converter.convert_to_string(1208)
      shortened.should == "BUM"
    end

    it "should convert string to base 10 number" do
      number = @alpha_converter.convert_to_number("BUM")
      number.should == 1208
    end
  end

end
