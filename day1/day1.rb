def diff(a,b)
  (a - b).abs
end

arr1 = []
arr2 = []

lines = File.readlines("input.txt").each {
  |line| a, b = line.split
  arr1.push(a.to_i)
  arr2.push(b.to_i)
}

arr1_sorted = arr1.sort
arr2_sorted = arr2.sort

ans = 0

arr1.length.times do |i|
  ans += diff(arr1_sorted[i], arr2_sorted[i])
end

puts ans

