class RegexDemo
  def convert_with_slashes(string)
    /#{string}/
  end

  def convert_with_regexp_new(string)
    Regexp.new(string)
  end
end
