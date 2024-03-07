class Solution:
    def consecutive_list(self, input_list, nums_len):
        cons_list = []
        start = 0
        for i in range(1,nums_len):
            if (input_list[i] == input_list[i-1] + 1):
                if (i == nums_len - 1):
                    cons_list.append(input_list[start:i+1])
                else:
                    continue
            else:
                
                cons_list.append(input_list[start:i])
                start = i
                if (i == nums_len - 1):
                    cons_list.append([input_list[i]])
        return cons_list

    def longestConsecutive(self, nums: list[int]) -> int:
        if len(nums) == 0:
            return 0
        elif len(nums) == 1:
            return 1
        else:
            nums = sorted(nums)
            nums_len = len(nums)
            nums1 = sorted(list(set(nums)))
            nums1_len = len(set(nums))
            
            longest_cons = []
            combined_cons = self.consecutive_list(nums, nums_len) + self.consecutive_list(nums1, nums1_len)

            for item in combined_cons:
                longest_cons.append(len(item))
            
            return max(longest_cons)

        
test = Solution()
res = test.longestConsecutive([100,4,200,1,3,2])
print(res)