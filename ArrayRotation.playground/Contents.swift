//Arrays: Left Rotation
func rotateLeft(a: [Int], d: Int) -> [Int] {
    let offset = d % a.count
    let resultArray = a[offset...] + a[..<offset]
    return Array(resultArray)
}


let rotArray = rotateLeft(a: [1,2,3,4,5], d: 2)
