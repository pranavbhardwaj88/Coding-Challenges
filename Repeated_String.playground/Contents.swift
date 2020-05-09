/**
 Lilah has a string, , of lowercase English letters that she repeated infinitely many times.

Given an integer, , find and print the number of letter a's in the first  letters of Lilah's infinite string.

For example, if the string  and , the substring we consider is , the first  characters of her infinite string. There are  occurrences of a in the substring.

Function Description

Complete the repeatedString function in the editor below. It should return an integer representing the number of occurrences of a in the prefix of length  in the infinitely repeating string.

repeatedString has the following parameter(s):

s: a string to repeat
n: the number of characters to consider
Input Format

The first line contains a single string, .
The second line contains an integer, .

Constraints

For  of the test cases, .
Output Format

Print a single integer denoting the number of letter a's in the first  letters of the infinite string created by repeating  infinitely many times.
 https://www.hackerrank.com/challenges/repeated-string/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup
 */

func repeatedString(s: String, n: Int) -> Int {
    
    let completeStringCount = n / s.count
    let remainingCharacterCount = n % s.count
    
    let occMainString = (s.filter{ $0 == "a"}.count) * completeStringCount
    let occnSubString = s.prefix(remainingCharacterCount).filter{ $0 == "a"}.count
    
    return occMainString + occnSubString
}

let aCount = repeatedString(s: "abc", n: 10)
