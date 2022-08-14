class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        // Convert the stone parameter from a constant (let) to a variable
        var stones = stones
        while stones.count > 1 {
            var x = 0, y = 0
            // Find the largest x value and second largest y value
            for stone in stones {
                if stone > x {
                    if x > y {
                        y = x
                    }
                    x = stone
                } else if stone > y {
                    y = stone
                }
                // print(x, y)
            }

            print(stones)
            // Removes the stones
            if x == y {
                if stones.count == 2 {
                   stones.remove(at: 1)
                    stones[0] = 0
                } else {
                    stones.remove(at: stones.firstIndex(of: x)!)
                    stones.remove(at: stones.firstIndex(of: y)!)
                }
            } else {
                stones.remove(at: stones.firstIndex(of: y)!)
                stones[stones.firstIndex(of: x)!] = x - y
            }
        }
        return stones[0]
    }
}