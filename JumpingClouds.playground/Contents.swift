func jumpingOnClouds(c: [Int]) -> Int {
    
    var index = 0
    var jumps = 0
    
    while index < c.count - 1 {
        if index + 2 < c.count {
            if c[index + 2] == 0 {
                index = index + 2
                jumps += 1
            }
            else if c[index + 1] == 0 {
                index = index + 1
                jumps += 1
            }
        }
        else if c[index + 1] == 0 {
            index = index + 1
            jumps += 1
        }
    }
    return jumps
}

let jumps = jumpingOnClouds(c: [0,0,0,0,1,0])
