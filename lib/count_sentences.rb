require 'pry'

class String

  def ending(punctuation)
    if self.end_with?(punctuation)
      true
    else
      false
    end
  end

  def sentence?
    ending(".")
  end

  def question?
    ending("?")
  end

  def exclamation?
    ending("!")
  end

  def count_sentences
    array = self.split(/[?!.]/) #splitting by "?", "!", and "." (multiple delimiters)
    array.delete_if {|string| string == ""}.count
  end
end
