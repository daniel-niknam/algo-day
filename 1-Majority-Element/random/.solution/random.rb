# frozen_string_literal: true

# @param nums [Integer[]] array of integers
# @return [Integer] the majority element
def majority_element(nums)
  majority_size = (nums.length / 2)

  while true do
    candidate = nums.sample
    return candidate.to_i if nums.sum {|num| num == candidate ? 1 : 0 } > majority_size
  end
end
