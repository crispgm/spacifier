require "helper"

class TestJekyllFilter < Minitest::Test
  context nil do
    should "build a jekyll site where spacifier filter works" do
      output_path = File.expand_path("./site/_site", File.dirname(__FILE__))
      `cd ./test/site && bundle install && bundle exec jekyll build --destination=#{output_path}`
      output = File.read(File.expand_path("./site/_site/index.html", File.dirname(__FILE__)))
      assert(true, output.include?("它在 works"))
      assert(true, output.include?("hello 世界"))
    end
  end
end
