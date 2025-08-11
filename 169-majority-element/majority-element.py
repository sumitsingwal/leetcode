class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        r_dict = {}

        for i in nums:
            if i in r_dict.keys():
                r_dict[i] += 1
            else:
                r_dict[i] = 1

        for x,y in r_dict.items():
            if y > len(nums)/2:
                return x
        