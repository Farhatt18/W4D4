
#phase 1

# def my_min(list) #O(n)

#     min = list.first #1

#     list.each do |num| #n
#         if num < min # 1
#             min = num #1
#         end
#     end
#     min   #1
# end


#phase 2

def my_min(list) #O(n)
    min = list.min 
    return min 
end

#phase 3
# def my_min(list) #O(n)
#     i = 0 #1
#     min = list.first#1

#     while i < list.length - 1 # n
#         num = list[i] 

#         if num < min #1
#             min = num #1
#         end #

#         i += 1 #1
#     end

#     min 
# end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)

