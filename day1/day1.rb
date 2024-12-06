arr1 = []
arr2 = []

lines = File.readlines("input.txt").each {
  |line| a, b = line.split
  arr1.push(a.to_i)
  arr2.push(b.to_i)
}

ans = 0

arr1.each do |val|
  num_times_in_array = arr2.grep(val).count
  ans += (num_times_in_array * val)
end

puts "Le answer is: #{ans}"

