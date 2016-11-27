# encoding: utf-8

module Spacifier
  CHINESE_PUNCTUATIONS = "，。／、（）【】「」·～《》？".freeze

  class << self
    def is_chinese_punctuation(c)
      CHINESE_PUNCTUATIONS.include? c
    end
  end
end