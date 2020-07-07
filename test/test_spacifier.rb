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

    should "sentence mixed with different elements" do
      input = "我是Xiao Ming生于2000年，1个人生活了30years。Mac是我最喜欢的电脑。aaaa-哈哈哈"
      output = Spacifier.spacify(input)
      expect = "我是 Xiao Ming 生于2000年，1个人生活了30years。Mac 是我最喜欢的电脑。aaaa-哈哈哈"
      assert_equal(expect, output)
    end

    should "return blank string" do
      input = nil
      output = Spacifier.spacify(input)
      assert_equal("", output)
      input = 111
      output = Spacifier.spacify(input)
      assert_equal("", output)
    end
  end
end
