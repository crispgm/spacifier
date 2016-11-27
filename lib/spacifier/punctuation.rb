# encoding: utf-8

module Spacifier
  class << self
    def is_punctuation(c)
      !(/\p{P}/.match(c) == nil)
    end
  end
end