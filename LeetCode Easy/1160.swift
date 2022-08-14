class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var chars = Array(chars).map{String($0)}
        var str = "hello"
        // var goodWords = [String]
        // var sumOfGoodWords = 0
        
        var dict = [String : Int]
        for letter in chars {
            dict[letter, default: 0] += 1
        }
        print(dict)
        return 1
    }
}