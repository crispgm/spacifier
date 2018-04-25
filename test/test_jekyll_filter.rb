require "helper"

class TestJekyllFilter < Minitest::Test
  context nil do
    should "build a jekyll site where spacifier filter works" do
      `cd ./test/site && bundle install && bundle exec jekyll build`
      output = File.read("./test/site/_site/index.html")
      assert(true, output.include?("它在 works"))
      assert(true, output.include?("hello 世界"))
    end
  end
end
