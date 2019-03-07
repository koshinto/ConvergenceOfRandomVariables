
class RandomNumber {
    var result:[Int:Int] = [:]
    
    func getNumber() -> Int {
        return Int.random(in: 1...3)
    }
    
    func setNumber() {
        let n = self.getNumber()
        let key = zip([n], [1])
        result = result.merging(key, uniquingKeysWith: + )
    }
    
    func runToResult(times:Int) {
        var c = 0
        while c < times {
            self.setNumber()
            c += 1
        }
        print(result)
        for i in result {
            let ave = Double(i.value) / Double(c)
            print("Rate of '\(i.key)' : \(Int(ave * 100))%")
        }
    }
}

// Example of execution.

  RandomNumber().runToResult(times: 100)
