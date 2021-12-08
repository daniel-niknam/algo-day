# frozen_string_literal: true

# @param nums [Integer[]] array of integers
# @return [Integer] the majority element
def majority_element(nums)
  majority_element_recurcive(nums, 0, nums.length - 1).to_i
end

def majority_element_recurcive(nums, low, high)
  return nums[low] if low == high

  mid = (high-low)/2 + low;
  left = majority_element_recurcive(nums, low, mid)
  right = majority_element_recurcive(nums, mid+1, high)

  return left if left == right

  leftCount = countRange(nums, left, low, high)
  rightCount = countRange(nums, right, low, high)

  return leftCount > rightCount ? left : right
end

def countRange(nums, num, low, high)
  count = 0
  for i in low...high do
    count += 1 if nums[i] == num
  end

  return count
end