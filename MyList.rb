require_relative 'MyEnumerable'
class MyList
    include MyEnumerable
    def initialize (*array)
        @list = array
    end

    def each(&my_list)
        # @my_list.each {|e| puts e}
        @list.each(&my_list)
    end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts list.all? {|e| e < 5}
# => true
puts list.all? {|e| e > 5}
# => false

# Test #any?
puts list.any? {|e| e == 3}
# => true
puts list.any? {|e| e == 5}
# => false
