/**
The Fibonacci sequence is dened using the following recursive formula:
F(0) = 0
F(1) = 1
F(N) = F(N−1) + F(N−2) if N ≥ 2
Write a function:
public func solution(_ N : Int) -> Int
that, given a non-negative integer N, returns the six least signicant decimal digits of number F(N).
For example, given N = 8, the function should return 21, because the six least signicant decimal digits of F(8) are 000021 (the complete decimal representation of F(8) is 21). Similarly, given N = 36, the function should return 930352, because the six least signicant decimal digits of F(36) are 930352 (the complete decimal representation of F(36) is 14930352).
Write an ecient algorithm for the following assumptions: N is an integer within the range [0..2,147,483,647].
*/

import UIKit
var fibonacciValues : [Int: Int] = [Int: Int]()
func solution(_ N: Int) -> Int {
    
    if N == 0 { return 0 }
    
    if N == 1 || N == 2 {
        fibonacciValues[N] = 1
        return 1
    }
    
    if let value = fibonacciValues[N] { return value }
    
    let k: Int  = (N & 1) == 1 ? ((N + 1) / 2) : N / 2;
    // Applying above formula [Note value n & 1 is 1 if n is odd, else 0]
    let fibK: Double = Double(solution(k))
    let fibK_1: Double = Double(solution(k - 1))

    var result: Double = 0

    if ((N & 1) == 1) {
        print((fibK * fibK + fibK_1 * fibK_1))
        result = (fibK * fibK + fibK_1 * fibK_1)
    } else {
        print((2.0 * fibK_1 + fibK) * fibK)
        result = ((2.0 * fibK_1 + fibK) * fibK)
    }
    
    fibonacciValues[N] = Int(result.truncatingRemainder(dividingBy: 1000000))

    return fibonacciValues[N] ?? 0
}


