class String

  def sentence?
    if self.end_with?('.')
      true 
    else 
      false 
    end 
  end 
    
  

  def question?
    if self.end_with?('?')
      true 
    else 
      false 
    end 

  end

  def exclamation?
    if self.end_with?('!')
      true 
    else 
      false 
    end 
  end

  def count_sentences
    if self.length == 0 
      return 0 
    else 
      result = self.gsub('.', '|').gsub('!','|').gsub('?', '|').split('|')
      result.delete("")
      return result.length
    end 
  end
end

test = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
puts test.count_sentences



#   describe "#count_sentences" do

#     it  "returns the number of sentences in a string" do
#       expect("one. two. three?".count_sentences).to eq(3)
#     end

#     it "returns zero if there are no sentences in a string" do
#       expect("".count_sentences).to eq(0)
#     end

#     it "returns the number of sentences in a complex string" do
#       complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
#       expect(complex_string.count_sentences).to eq(4)
#     end
#   end


# end
