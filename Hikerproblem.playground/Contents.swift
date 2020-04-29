func countingValleys(n: Int, s: String) -> Int {
    
    var valleyCount = 0
    var seaLevelChange = 0
    for char in s {
        if char == "U" {
            seaLevelChange += 1
        } else if char == "D" {
            if seaLevelChange == 0 { valleyCount += 1 }
            seaLevelChange -= 1
        }
    }
    
    return valleyCount
}
let valleuCount = countingValleys(n: 8, s: "DDUUUUDD")
