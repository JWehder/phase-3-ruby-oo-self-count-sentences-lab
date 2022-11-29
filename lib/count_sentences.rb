require 'pry'

class String

  def sentence?
    self.end_with?(".")
    
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_array = self.split(/[.!?]+/)
    sentence_array.count
  end
end

sentence = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
puts sentence.sentence?
puts sentence.count_sentences
print "The weather outside is frightful.".sentence?