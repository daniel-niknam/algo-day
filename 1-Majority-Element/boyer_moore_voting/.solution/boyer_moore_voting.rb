# frozen_string_literal: true

# @param nums [Integer[]] array of integers
# @return [Integer] the majority element
def majority_element(nums)
  count = 0
  candidate = nil

  nums.each do |num|
    candidate = num if count == 0
    count += (num == candidate ? 1 : -1) 
  end

  candidate.to_i
end
