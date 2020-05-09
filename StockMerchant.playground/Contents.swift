/**
 John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.

For example, there are  socks with colors . There is one pair of color  and one of color . There are three odd socks left, one of each color. The number of pairs is .

Function Description

Complete the sockMerchant function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.

sockMerchant has the following parameter(s):

n: the number of socks in the pile
ar: the colors of each sock
Input Format

The first line contains an integer , the number of socks represented in .
The second line contains  space-separated integers describing the colors  of the socks in the pile.

Constraints

 where
Output Format

Return the total number of matching pairs of socks that John can sell.
 https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup
 */

func sockMerchant(n: Int, ar: [Int]) -> Int {
    
    let sortedArray = ar.sorted()
    var pairs = 0
    var index = 0
    
    while index < sortedArray.count - 1 {
        
        if sortedArray[index] == sortedArray [index + 1] {
            pairs += 1
            index = index + 1
        }
        index += 1
    }
    
    return pairs
}
let sockPair = sockMerchant(n: 9, ar: [10,20,20,10,10,10,30,50,10,20])
