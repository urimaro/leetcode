# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  length = nums.length
  count = 0

  length.times do |n|
    if nums[n - count] == 0
      nums.append(nums.slice!(n - count))
      count += 1
    end
  end
end
