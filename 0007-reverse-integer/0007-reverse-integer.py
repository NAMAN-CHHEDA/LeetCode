class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        sign = -1 if x < 0 else 1
        x = abs(x)
        INT_MAX = 2**31 - 1  
        INT_MIN = -2**31
        reverse_number = 0
        while x > 0:
            last_digit = x % 10 
            reverse_number = (reverse_number * 10) + last_digit
            x = x//10
        if reverse_number > INT_MAX  or (reverse_number == INT_MAX and last_digit > 7):
                return 0
        return sign * reverse_number 


        