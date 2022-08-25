require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false    
  end

  def question?
    self.end_with?("?") ? true : false    
  end

  def exclamation?
    self.end_with?("!") ? true : false    
  end

  #define endpoints (exclamation, full stop, question mark)
  #split self or string based on endpoint, filter array, return number of elements not empty. 
  def count_sentences
    delimeters = ['!', '.', '?']
    self.split(Regexp.union(delimeters)).select {|item| !item.empty?}.size
  end
end