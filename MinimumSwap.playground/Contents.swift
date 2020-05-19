/**
 You are given an unordered array consisting of consecutive integers  [1, 2, 3, ..., n] without any duplicates. You are allowed to swap any two elements. You need to find the minimum number of swaps required to sort the array in ascending order.
 */
//https://www.hackerrank.com/challenges/minimum-swaps-2/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays

import UIKit

func minimumSwaps(arr: [Int]) -> Int {
    var swapCount = 0
    var boolArray = Array(repeating: false, count: arr.count)
   
    for (index, _) in arr.enumerated() {
        var j = index
        var cycleCount = 0
        while (!boolArray[j]) {
            boolArray[j] = true
            j = arr[j] - 1;
            cycleCount += 1
        }
        if cycleCount != 0 {
            swapCount += cycleCount - 1
        }
    }
    
    return swapCount
}


let swapCount = minimumSwaps(arr: [4,3,1,2])
