

# def first_anagram?(str1, str2) # O(n!)
#     chars = str1.chars.permutation.to_a #n

#     chars.each do |subarr| #n
#        return true if subarr.join == str2 #1
#     end

#     return false
# end


# # p first_anagram?("gizmo", "sally")    #=> false
# # p first_anagram?("elvis", "lives")    #=> true

# def second_anagram?(str1,str2) # O(n^2)

#     str1.each_char do |char| #n
#         idx = str2.index(char)#n
#         return false if idx.nil?
#         str2[idx] = "" 
#     end

#     str2.empty?#1

# end

# # puts 
# # p second_anagram?("gizmo", "sally")    #=> false
# # p second_anagram?("elvis", "lives")    #=> true

# def third_anagram?(str1,str2)#O(n log n)
#     str1.sort == str2.sort
# end

# # p third_anagram?("gizmo", "sally")    #=> false
# # p third_anagram?("elvis", "lives")    #=> true


# def fourth_anagram?(str1, str2) # O(n)
#   count_char(str1) == count_char(str2)
# end


# def count_char(str)
#   count = Hash.new(0) # 1
#   str.each_char { |char| count[char] += 1 } # n
#   count # 1
# end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true



def bonus_anagram?(str1, str2) # O(n)
  count = Hash.new(0) # 1

  str1.each_char { |char| count[char] += 1 } # n
  str2.each_char { |char| count[char] -= 1 } # n

  count.all? { |_, v| v.zero? } # n
end


p bonus_anagram?("gizmo", "sally")    #=> false
p bonus_anagram?("elvis", "lives")    #=> true