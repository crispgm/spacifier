require "helper"

class TestSpacifier < Minitest::Test
  context nil do
    should "strip words" do
      input = " input 输入 "
      output = Spacifier.spacify(input)
      assert_equal(input.strip, output)
    end

    should "return without changes" do
      input = "input 输入"
      output = Spacifier.spacify(input)
      assert_equal(input, output)
    end

    should "ignore punctuations" do
      input = "input 输入,英文,English好看"
      output = Spacifier.spacify(input)
      expect = "input 输入,英文,English 好看"
      assert_equal(expect, output)
    end

    should "ignore numbers" do
      input = "10月11日abc"
      output = Spacifier.spacify(input)
      expect = "10月11日 abc"
      assert_equal(expect, output)
    end
  end
end