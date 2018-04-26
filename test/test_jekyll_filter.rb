require "helper"

class TestJekyllFilter < Minitest::Test
  context nil do
    should "build a jekyll site where spacifier filter works" do
      output_path = "/tmp/_site"
      output = File.read(File.expand_path("/tmp/_site/index.html", File.dirname(__FILE__)))
      assert_equal(true, output.include?("它 works"))
      assert_equal(true, output.include?("hello 世界"))
    end
  end
end
