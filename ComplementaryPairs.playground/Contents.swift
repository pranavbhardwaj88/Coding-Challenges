import UIKit
/**
 A non-empty array A consisting of N integers is given. A pair of integers (P, Q) is called K-complementary in array A if 0 ≤ P, Q < N and A[P] + A[Q] = K. For example, consider array A such that:
 A[0] = 1 A[3] = 0 A[6] = -2
 A[1] = 8
 A[4] = 1
 A[7] = 4
 A[2]= -3 A[5]= 3 A[8]= 5
 The following pairs are 6-complementary in array A: (0,8), (1,6), (4,8), (5,5), (6,1), (8,0), (8,4). For instance, the pair (4,8) is 6-complementary because A[4] + A[8] = 1 + 5 = 6.
 Write a function:
 public func solution(_ K : Int, _ A : inout [Int]) -> Int
 that, given an integer K and a non-empty array A consisting of N integers, returns the number of K-complementary pairs in array A. For example, given K = 6 and array A such that:
 A[0] = 1 A[3] = 0 A[6] = -2
 A[1] = 8
 A[4] = 1
 A[7] = 4
 A[2]= -3 A[5]= 3 A[8]= 5
 the function should return 7, as explained above.
 Write an efficient algo for the following assumptions
 N is an integer within the range [1..40,000];
 K is an integer within the range [−2,147,483,648..2,147,483,647];
 range [−2,147,483,648..2,147,483,647].
 */
func knumbersolution(_ K : Int, _ A : [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    let sortedArray = A.sorted()
    var sameValueCount = 0
    
    for value in sortedArray {
        if (2 * value == K) {
            sameValueCount += 1
        }
    }
    var kNumberCount = 0
    var leftIndex = 0
    var rightIndex = sortedArray.count - 1
    
    while rightIndex > leftIndex {
        let sum = sortedArray[leftIndex] + sortedArray [rightIndex]
        if sum == K {
            if sortedArray[leftIndex] == sortedArray [rightIndex]  {
                let count = rightIndex - leftIndex + 1
                kNumberCount += (count - 1) * count / 2
                leftIndex = rightIndex
            } else {
                var leftIndexDuplicateCount = 1
                while (leftIndex + 1 <= rightIndex && sortedArray[leftIndex + 1] == sortedArray [leftIndex]) {
                    leftIndexDuplicateCount += 1
                    leftIndex += 1
                }
                leftIndex += 1
                
                var rightIndexDuplicateCount = 1
                while rightIndex - 1 >= leftIndex && sortedArray[rightIndex - 1] == sortedArray[rightIndex] {
                    rightIndexDuplicateCount += 1
                    rightIndex -= 1
                }
                rightIndex -= 1
                kNumberCount += leftIndexDuplicateCount * rightIndexDuplicateCount
            }
        } else {
            if sum > K  {
                rightIndex -= 1
            } else {
                leftIndex += 1
            }
        }
    }
    return kNumberCount * 2 + sameValueCount
}


