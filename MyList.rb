class MyList
    def initialize (*array)
        @list = array
    end

    def each(my_list)
        @my_list.each {|e| puts e}
    end
end

list = MyList.new(1, 2, 3, 4)
