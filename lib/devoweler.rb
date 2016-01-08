class String
  def devoweler
    str = self.gsub(/[aeiou]/, '-')
    return str
  end
end
