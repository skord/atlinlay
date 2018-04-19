module Atlinlay
  class Word
    attr_accessor :word
    def initialize(word = nil)
      @word = word
    end


    def translate
      if capitalized?
        return to_pig_latin.capitalize
      else
        return to_pig_latin
      end
    end

    private

    def to_pig_latin
      if downcased.start_with?("a","e","i","o","u")
        new_word =  downcased + 'way'
      elsif downcased.start_with?("qu")
        new_word = downcased[2..-1] + 'quay'
      else
        first, second, third = downcased.partition(/[aeiou]/i)
        new_word = second + third + first + "ay"
      end
    end

    def downcased
      @word.downcase
    end

    def capitalized?
      if @word =~ /^[A-Z]/
        true
      else
        false
      end
    end

  end
end
