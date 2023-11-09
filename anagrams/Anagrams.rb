

def first_anagram?(str1, str2) O(n)
    chars = str1.chars.permutation.to_a #n

    chars.each do |subarr| #n
       return true if subarr.join == str2 #1
    end

    return false
end


p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1,str2) # O(n)

    str1.each_char do |char| #n
        idx = str2.index(char)#1
        return false if idx.nil?
        str2[idx] = "" 
    end

    str2.empty?#1

end

puts 
p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1,str2)#O(n)
    str1.sort == str2.sort
end

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true
