//
//  884.swift
//  LeetCode Swift
//
//  Created by Andrie on 8/12/22.
//

class Solution {
    func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
        let sentence1 = s1.split(separator: " ").map{String($0)}
        let sentence2 = s2.split(separator: " ").map{String($0)}
        // return sentence1.symmetricDifference(sentence2).map{String($0)}
        var words = [String: Int]()
        for word in sentence1 {
            words[word, default: 0] += 1
        }
        for word in sentence2 {
            words[word, default: 0] += 1
        }
        return Array(words.filter{$0.1 == 1}.keys)   
    }
}