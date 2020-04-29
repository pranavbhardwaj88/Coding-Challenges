func minimumBribes(q: [Int]) -> Void {
 var numberOfbirbes = 0
    for index in stride(from: q.count - 1, through: 0, by: -1) {
        if q[index] - (index + 1) > 2 {
            print("Too chaotic")
            return
        }
        for subIndex  in stride(from: max(0, q[index] - 2), to: index, by: 1){
            if q[subIndex] > q[index] {
                numberOfbirbes += 1
            }
        }
    }
    
    if numberOfbirbes > 0 {
        print(numberOfbirbes)
    }
}


minimumBribes(q: [2, 1, 5, 3, 4])
