class Solution:
    def isPalindrome(self, s: str) -> bool:
        newstr = ''
        for n in s:
            if n.isalnum():
                newstr += n.lower()
        return newstr == newstr[::-1]