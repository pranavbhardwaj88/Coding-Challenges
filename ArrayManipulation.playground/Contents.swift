/**
 Starting with a 1-indexed array of zeros and a list of operations, for each operation add a value to each of the array element between two given indices, inclusive. Once all operations have been performed, return the maximum value in your array.
 https://www.hackerrank.com/challenges/crush/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays
 */
import UIKit

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    var result = Array(repeating: 0, count: n)
    for query in queries {
        let left = query[0] - 1
        let right = query[1] - 1
        let amount = query[2]
        result[left] += amount
        if (right + 1) < n {
            result[right + 1] -= amount
        }
    }
    
    var max = 0
    var x = 0
    for i in 0 ..< n {
        x += result[i]
        if max < x {
            max = x
        }
    }
    
    return max
}


let maxNumber = arrayManipulation(n: 10, queries: [[2,6,8], [3,5,7], [1,8,1], [5, 9, 15]])
