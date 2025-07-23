#O(n^2)
# LOOP1- In the worst case, seen grows from 0 to n, so the search becomes O(1) + O(2) + ... + O(n) = O(n²).
#LOOP2-At most runs n times to write back unique values → O(n) .so finally O(n^2)
class Solution(object):
    def removeDuplicates(self, nums):
        seen=[]
        for i in range(0,len(nums)):
            if nums[i] in seen:
                continue
            else:
                seen.append(nums[i])
        for i in range (len(seen)):
            nums[i]=seen[i]
        return len(seen)