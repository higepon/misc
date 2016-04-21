
class Solution {
    func plusOne(digits: [Int]) -> [Int] {
        var carry = 1
        var result: [Int] = []
        for digit in digits.reverse() {
            var r = digit + carry
            if r == 10 {
               r -= 10 
               carry = 1
            } else {
                carry = 0
            }
            result.append(r)
        }
        if carry == 1 {
            result.append(1)
        }
        return result.reverse()
    }
}
