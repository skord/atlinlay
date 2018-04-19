require 'pry'
module Atlinlay
  class Translator
    attr_accessor :text

    def initialize(text = nil)
      @text = text
    end

    def translate
      text.gsub(/[[:alnum:]]{1,}/) do |word| 
        Atlinlay::Word.new(word).translate
      end
    end

  end
end
