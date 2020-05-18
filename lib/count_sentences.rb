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
    delimiters = [". ", "?", "!"]
    binding.pry
    new_count = self.split(Regexp.union(delimiters))
    new_count.count
  end
end
