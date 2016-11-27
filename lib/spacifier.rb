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
        if is_chinese_punctuation(c)
          new_words << c
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
end