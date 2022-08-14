class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for num in nums {
            dict[num, default: 0] += 1
        }
        for (key, value) in dict {
            if value == 1 {
                return key
            }
        }
        return 1
    }
}

// Faster Solution
class Solution2 {
    func singleNumber(_ nums: [Int]) -> Int {
        var distinctNums = Set(nums)
        // All the unique numbers are doubled so that when you subtract the sum, all that will be left is the individual one
         return distinctNums.reduce(0, +) * 2 - nums.reduce(0, +)
    }
}