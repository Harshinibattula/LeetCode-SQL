#O(n^2)
class Solution:
    def twoSum(self, nums, target):
        for i in range(len(nums)):
            x = target - nums[i]
            for j in range(i + 1, len(nums)):
                if nums[j] == x:
                    return [i, j]