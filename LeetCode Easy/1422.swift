class Solution {
    func maxScore(_ s: String) -> Int {
        var str = Array(s)
        var highestScore = 0
        for i in 1..<str.count {
            var left = Array(str[0..<i])
            var right = Array(str[i...])
            
            var currentScore = left.filter{$0 == "0"}.count + right.filter{$0 == "1"}.count
            highestScore = max(highestScore, currentScore)
        }
        
        return highestScore
    }
}
var test = Solution()
print(test.maxScore("00"))