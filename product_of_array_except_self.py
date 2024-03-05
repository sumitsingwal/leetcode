import math
class Solution:
    def productExceptSelf(self, nums: list[int]) -> list[int]:

        l = len(nums)
        products = [1] * l # [1,1,1,1] if l = 4

        for i in range(1,l):
            products[i] = products[i-1] * nums[i-1]
        
        right = nums[-1]
        for y in range(l-2,-1,-1):
            products[y] *= right
            right *= nums[y]

        return products

        # Below code will pass 18/22 test cases. Error: Time Limit Exceeded
        """result = []
        l = len(nums)
        for i in range(0,l):
            res = math.prod(nums[:i]) * math.prod(nums[i+1:])
            result.append(res)
        
        return (result)"""
    
list1 = Solution()
print(list1.productExceptSelf([1,2,3,4]))