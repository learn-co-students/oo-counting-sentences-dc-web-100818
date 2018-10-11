require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    end
    false
  end

  def question?
    if self.end_with?("?")
      return true
    end 
    false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    sentence_array = self.split(/[.?!]/)
    sentence_array.delete_if {|sentence| sentence == "" }
    sentence_array.length
  end
end