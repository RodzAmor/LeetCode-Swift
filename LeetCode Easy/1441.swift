class Solution {
    func buildArray(_ target: [Int], _ n: Int) -> [String] {
        var arr = [Int]()
        var pushPop = [String]()
        var index = 0
        for i in 1...n {
            if target[index] == i {
                arr.append(i)
                pushPop.append("Push")
                if arr == target {
                    break
                }
                index += 1
            } else {
                pushPop.append("Push")
                pushPop.append("Pop")
            }
        }
        return pushPop
    }
}