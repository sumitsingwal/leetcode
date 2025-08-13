class Solution:
    def isValid(self, s: str) -> bool:
        stk = []
        mth = {')': '(', '}': '{', ']': '['}

        i = 0
        while i < len(s):
            char = s[i]
            if char in mth:
                if stk and stk[-1] == mth[char]:
                    stk.pop()
                else:
                    return False
            else:
                stk.append(char)
            i += 1  

        return len(stk) == 0