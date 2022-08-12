class Solution {
    func getMinDistance(_ nums: [Int], _ target: Int, _ start: Int) -> Int {
        for i in 0..<nums.count {
            if start + i < nums.count && nums[start + i] == target{
                return i
            } else if start - i >= 0 && nums[start - i] == target{
                return i
            }
        }
        return 1
    }
}
