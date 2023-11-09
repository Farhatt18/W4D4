require "byebug"
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

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)


# phase 1
# def largest_contiguous_subsum(list) # O(n^2)

#     max = list.first # 1

#     (0...list.length).each do |i| # n
#         (i...list.length).each do |j| # n
#             subsum = list[i..j].sum # 1
#             if subsum > max # 1
#                 max = subsum # 1
#             end
#         end
#     end
#     max
# end



# phase 2 O(n)
def largest_contiguous_subsum(list)
  current_sum = 0 # 1
  largest_sum = list.first # 1

  list.each do |ele| # n
    current_sum += ele # 1
    if current_sum > largest_sum # 1
        largest_sum = current_sum # 1
    end
  end

  largest_sum # 1
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

