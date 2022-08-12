//
//  main.swift
//  LeetCode Swift
//
//  Created by Andrie on 8/12/22.
//

// Used to test commands and etc.
// practice file
// cannot run the other files. They are purely for pasting the solutions
// go here to test and experiment
struct Solution {
    static func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
        let sentence1: Set = Set(s1.split(separator: " "))
        let sentence2: Set = Set(s2.split(separator: " "))
        //        return Array(sentence1.symmetricDifference(sentence2))
        return Array(sentence1.symmetricDifference(sentence2))
    }
}

print(Solution.uncommonFromSentences("this apple is sweet", "this apple is sour"))
