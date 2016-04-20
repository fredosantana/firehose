class Colors
  def each
    yield "red"
    yield "green"
    yield "blue"
  end
end

>> c = Colors.new
>> c.each { |i| puts i }