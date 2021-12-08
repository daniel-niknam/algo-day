# frozen_string_literal: true

# @param nums [Integer[]] array of integers
# @return [Integer] the majority element
def majority_element(nums)
  majority_size = (nums.length / 2)

  nums.each do |n|
    count = 0

    nums.each do |f|
      count += 1 if n == f
    end

    return n.to_i if count > majority_size
  end

  nil
end
