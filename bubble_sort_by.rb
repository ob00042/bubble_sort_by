def bubble_sort_by(array)

	swap=false

	loop do

		(1..array.length).each do |x|

			if yield(array[x-1], array[x])<0
				array[x-1], array[x]=array[x], array[x-1]
				swap=true
			else
				swap=false
			end

		end

		break if swap==false
		
	end

	array
	
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
 left.length - right.length
end