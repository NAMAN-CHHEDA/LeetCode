class Solution(object):
    def isPalindrome(self, x):
        """
        :type x: int
        :rtype: bool
        """
        reverse_number=0
        duplicate = x
        while(x>0):
            ld=x%10
            reverse_number = (reverse_number * 10) + ld
            x = x/10
        if duplicate == reverse_number:
            return True
        else:
            return False