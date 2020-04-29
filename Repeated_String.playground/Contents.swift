func repeatedString(s: String, n: Int) -> Int {
    
    let completeStringCount = n / s.count
    let remainingCharacterCount = n % s.count
    
    let occMainString = (s.filter{ $0 == "a"}.count) * completeStringCount
    let occnSubString = s.prefix(remainingCharacterCount).filter{ $0 == "a"}.count
    
    return occMainString + occnSubString
}

let aCount = repeatedString(s: "abc", n: 10)
