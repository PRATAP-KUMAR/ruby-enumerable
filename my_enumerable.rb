module MyEnumerable
  def all?
    result = true
    each do |number|
      result = false if yield(number) == false
    end
    result
  end

  def any?
    result = false
    each do |number|
      result ||= yield(number)
    end
    result
  end

  def filter?
    array = []
    each { |number| array.push(number) if yield(number) }
    array
  end
end
