# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}
def find_difference(nums1, nums2)
    uniq_nums1 = nums1.uniq
    uniq_nums2 = nums2.uniq
    [uniq_nums1 - uniq_nums2, uniq_nums2 - uniq_nums1]
end
