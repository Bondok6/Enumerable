module MyEnumerable
  def all?
    bool = true
    @list.each { |n| bool = false unless yield n }
    bool
  end
end