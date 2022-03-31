module MyEnumerable
  def all?
    bool = true
    each { |n| bool = false unless yield n }
    bool
  end

  def any?
    bool = false
    each { |n| bool = true if yield n }
    bool
  end

  def filter
    arr = []
    each { |n| arr.push(n) if yield n }
    arr
  end
end
