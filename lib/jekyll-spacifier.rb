module Jekyll
  module Spacify
    def spacify(input)
      Spacifier.spacify(input)
    end
  end
end

Liquid::Template.register_filter(Jekyll::Spacifier)
