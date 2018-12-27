# encoding: utf-8

module Spacifier
  class << self
    def punct?(c)
      !(/\p{P}/.match(c) == nil)
    end
  end
end
