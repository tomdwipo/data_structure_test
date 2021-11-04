import UIKit

var greeting = "Hello, playground"

print(greeting)


func factorial(_ n:Int)-> Int {
    if n == 0 {
        return 1
    }else if(n == 1) {
        return n
    }else{
        return n * factorial(n-1)
    }
}

//print(factorial(5))

func checkArrayIsShorted(data: [Int], n: Int) -> Bool{
    if n == 1 {
        return true
    }
    else{
        print("\(data[n-1]) < \(data[n-2]) \(n)")

        if (data[n-1] > data[0]){
            return data[n-1] < data[n-2] ? false : checkArrayIsShorted(data: data, n: n - 1)
        }else{
            return data[n-2] < data[n-1] ? false : checkArrayIsShorted(data: data, n: n - 1)

        }
    }
}
let data = [1,2,3,4,5]
//print(checkArrayIsShorted(data: data, n: data.count))

func binary(data: [Int], n: Int) {
    var data = data
    if n<1 {
        print("data \(data)")
    }else{
        data[n-1] = 0
        binary(data: data, n: n-1)
        data[n-1] = 1
        binary(data: data, n: n-1)
    }
}

binary(data: data, n: 4)

func testStackPopPushSymbol(symbol: String) ->Bool{
    var data : [String] = []
    for i in 0..<Array(symbol).count {
        if Array(symbol)[i] == "{" || Array(symbol)[i] == "}" || Array(symbol)[i] == "[" || Array(symbol)[i] == "]" || Array(symbol)[i] == "(" || Array(symbol)[i] == ")" {
           
            if (Array(symbol)[i] == "{"){
                data.append("{")
            }
            if (Array(symbol)[i] == "}") {
                if data.isEmpty {
                    return false
                }
                if (data[data.count-1] == "{") {
                    data.remove(at: data.count-1)
                }else{
                    return false
                }
            }
            
            if (Array(symbol)[i] == "("){
                data.append("(")
            }
            if (Array(symbol)[i] == ")") {
                if data.isEmpty {
                    return false
                }
                if (data[data.count-1] == "(") {
                    data.remove(at: data.count-1)
                }else{
                    return false
                }
            }
            
            if (Array(symbol)[i] == "["){
                data.append("[")
            }
            if (Array(symbol)[i] == "]") {
                if data.isEmpty {
                    return false
                }
                if (data[data.count-1] == "[") {
                    data.remove(at: data.count-1)
                }else{
                    return false
                }
            }
        }
    }
    if data.isEmpty {
        return true
    }else{
        return false

    }
}



print(testStackPopPushSymbol(symbol: "((([])))"))
