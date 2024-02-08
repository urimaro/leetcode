# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  moved_count = 0
  nums.length.times do |n|
    index = n - moved_count
    if nums[index] == 0
      nums.append(nums.slice!(index))
      moved_count += 1
    end
  end
end
