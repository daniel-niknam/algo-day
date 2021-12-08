# frozen_string_literal: true

# @param nums [Integer[]] array of integers
# @return [Integer] the majority element
def majority_element(nums)
  majority_size = (nums.length / 2)
  count = Hash.new(0)

  nums.each do |n|
    count[n] += 1
    return n.to_i if count[n] > majority_size
  end

  nil
end
