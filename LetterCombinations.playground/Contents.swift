func letterCombinations(_ digits: String) -> [String] {
    let numer = digits.compactMap { (c) -> Int? in
        return c.wholeNumberValue ?? nil
    }
    let n = recursive(digits: numer)
    return n
}

func recursive (digits: [Int]) -> [String] {
    guard digits.count > 0 else {return [String]()}
    var finalStrings = [String]()
    if digits.count == 1 {
        return getStrs(num: digits[0])
    }
    
    let s1 = getStrs(num: digits[0])
    let s2 = recursive(digits: Array(digits[1..<digits.count]))
    
    finalStrings = appendStrings(a: s1,b: s2)
    return finalStrings
}

func getStrs(num: Int) -> [String] {
    if num == 2 {
        return ["a","b","c"]
    } else if num == 3 {
        return ["d","e","f"]
    } else if num == 4 {
        return ["g","h","i"]
    } else if num == 5 {
        return ["j","k","l"]
    } else if num == 6 {
        return ["m","n","o"]
    } else if num == 7 {
        return ["p","q","r", "s"]
    } else if num == 8 {
        return ["t","u","v"]
    } else if num == 9 {
        return ["w","x","y", "z"]
    } else {
        return [""]
    }
}

func appendStrings(a: [String], b: [String]) -> [String] {
    var appended = [String]()
    for s in a {
        for p in b {
            let x = s + p
            appended.append(x)
        }
    }
    return appended
}

