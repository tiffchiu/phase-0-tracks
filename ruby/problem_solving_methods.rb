# Release 0
def search_array(arr, num)
	x = 0
	until x == arr.length 
		if arr[x] == num
		return x
		end
		x += 1
	end
end

arr = [42, 89, 23, 1]

p search_array(arr, 1)
p search_array(arr, 42)
p search_array(arr, 89)
p search_array(arr, 24)


# Release 1
def fib(num)
	arr = [0, 1]
	x = 2
	until x == num
	  arr << arr[-2] + arr[-1]
	  x+=1
	end
	arr
end

p fib(6)
p fib(13)
p fib(100).last
p fib(100).last == 218922995834555169026


# Release 3: Sorting an Array

# Bubble Sort
# - Take an array and determine the length of it
# - Create a loop that compares two items at a time
# - If the item at the current position is greater than the one next to it, rearrange the order
# - Add a word to end the loop

def bubble_sort (array)

  # Determining the length of the array (how many)
  n = array.length
  
  loop do

    # A variable to be maintained (so that it doesn't loop on infinitely)
    swapped = false

    (n-1).times do |i|

      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    
    end

    break if not swapped
  end

  array
end

array = [42, 89, 23, 1]
p bubble_sort (array)