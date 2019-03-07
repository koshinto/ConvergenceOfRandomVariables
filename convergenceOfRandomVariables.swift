
class RandomNumber {
    var result:[Int:Int] = [:]
    
    func getNumber(_ collection:Int) -> Int {
        return Int.random(in: 1...collection)
    }
    
    func setNumber(_ collection:Int) {
        let n = self.getNumber(collection)
        let key = zip([n], [1])
        result = result.merging(key, uniquingKeysWith: + )
    }
    
    func runToResult(times:Int, collection:Int) {
        var c = 0
        while c < times {
            self.setNumber(collection)
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

  RandomNumber().runToResult(times: 100, collection: 3)
