def bubble_sort_by(array)

	

	loop do

		i, swap=0, 0


		while i<array.length-1

			if yield(array[i], array[i+1])<0
				array[i+1], array[i]=array[i], array[i+1]
				swap+=1
			end

			i+=1

		end

		break if swap==0
		
	end

	print array
	
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
 left.length - right.length
end