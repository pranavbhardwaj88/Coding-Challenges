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
