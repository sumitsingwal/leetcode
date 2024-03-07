class Solution:
    def isPalindrome(self, s: str) -> bool:
        s = s.lower()
        s = ''.join(ch for ch in s if ch.isalnum())
        if (s[::1] == s[::-1]):
            return True
        else:
            return False

test = Solution()
res = test.isPalindrome("A man, a plan, a canal: Panama")
print(res)