
#phase 1
def my_min(list) # O(n^2)

    list.each do |num1| # n 
        min = true 
        list.each do |num2| #n
            if num2 < num1 
                min = false
            end
        end
        return num1 if min == true 
    end
end

#phase 2
# def my_min(list) #O(n)

#     min = list.first #1

#     list.each do |num| #n
#         if num < min # 1
#             min = num #1
#         end
#     end
#     min   #1
# end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)