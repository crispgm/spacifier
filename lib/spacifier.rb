# encoding: utf-8

module Spacifier

  require "spacifier/punctuation"
  require "spacifier/version"

  class << self
    def spacify(words)
      # strip words
      words.strip!
      # init vars
      new_words = ""
      last_word_type = nil # 0 for cn, 1 for en
      # iterate chars
      words.each_char do |c|
        if c == " "
          new_words << c
          last_word_type = nil
        elsif /\d/.match(c) != nil
          new_words << c
          last_word_type = nil
        elsif is_punctuation(c)
          new_words << c
          last_word_type = nil
        elsif /\p{Han}/.match(c) == nil
          new_words << " " if last_word_type == 0
          new_words << c
          last_word_type = 1
        else
          new_words << " " if last_word_type == 1
          new_words << c
          last_word_type = 0
        end
      end

      new_words
    end
  end

  module Jekyll
    module Filter
      def spacify(input)
        Spacifier.spacify(input)
      end
    end
  end
end

if defined?(Liquid)
  Liquid::Template.register_filter(Spacifier::Jekyll::Filter)
end
