class Solution:
    def twoSum(self, numbers: list[int], target: int) -> list[int]:
        low = 0
        high = len(numbers) - 1
        
        while (low <= high):

            if numbers[low]+numbers[high] < target:
                low = low + 1

            elif numbers[low]+numbers[high] > target:
                high = high - 1
                
            else:
                return ([low+1,high+1])
                break

test1 = Solution()
res = test1.twoSum([1,2,3,4,5,6,7,8,9,10], 8)
print(res)