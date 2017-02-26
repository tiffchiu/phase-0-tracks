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