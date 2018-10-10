require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else 
      false 
    end 
  end

  def question?
    if self.end_with?("?")
      true 
    else 
      false 
    end 
  end

  def exclamation?
    if self.end_with?("!")
      true 
    else 
      false 
    end 
  end

  def count_sentences
    count = 0 
    arr = self.split(" ")
      arr.each do |word|
        if word.end_with?(".")
          count += 1 
        elsif word.end_with?("?")
          count += 1 
        elsif word.end_with?("!")
          count += 1 
        end 
      end
    count 
  end 
  
end



