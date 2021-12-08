
[10, 100, 1000, 10_000, 100_000, 1_000_000, 10_000_000].each do |number|
  max = (number / 2) + 1
  pick = rand(1..number)
  count = 0
  range = (1..number).to_a.shuffle
  new_range = range.map do |r|
    if count < max
      count += 1
      pick
    else
      r
    end
  end
  
  File.open("#{File.dirname(__FILE__)}/#{number}.txt","w") do |line|
    line.puts new_range.shuffle.join(" ")
  end

end