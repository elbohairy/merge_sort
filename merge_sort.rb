# Thoughts:
# => started using the debugger library. Really helps! 
# => Couldn't get my head around how to write the merge sort. Then 
# saw the lecture by David Malan and it became much clearer what I 
# needed to do.
# => I wish Odin would be explicit about the fact that merge sort
# requires 2 methods to work
# => Also, Odin, the term "recursive merge sort methodology" is 
# meaningless to me. And thinking about recursion and recursive methods
# as "dividing and conquering" is so vague I find it no help at all. 
# PJSalt--I spent too much time on this for the amount of code I wrote.

def merge(a, b, arr)
  acounter, bcounter = 0, 0
  arr[0..-1] = []
  until acounter == a.size and bcounter == b.size
    if acounter == a.size
      arr.push b[bcounter]
      bcounter += 1
    elsif bcounter == b.size
      arr.push a[acounter]
      acounter += 1
    elsif a[acounter] > b[bcounter]
      arr.push b[bcounter]
      bcounter += 1
    elsif b[bcounter] >= a[acounter]
		  arr.push a[acounter]
		  acounter += 1
    end
  end
  
  return arr
end

def merge_sort(array)
  if array.size < 2
    return array
  else
    birth = array[0...array.size/2]
    death = array[array.size/2..-1]
    merge_sort birth
    merge_sort death
    merge(birth, death, array)
  end
end

a = [9, 4, 2, -10, 20, 1, 1]
p merge_sort a
