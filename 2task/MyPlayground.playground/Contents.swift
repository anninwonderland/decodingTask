//finding letter which're used more than once

var agentWrite: String
var robertSays: String

func generate(from min: Int, to max: Int) -> String {
    var string = ""
    let letters =  Array("abcdefghijklmnopqrstuvwxyz")
    
    for _ in min...max {
        string.append(letters.randomElement()!)
    }
    return string
}

func popularLetters(in string: String) -> String {
    var answer = ""
    
    for letter in string {
        if string.firstIndex(of: letter) != string.lastIndex(of: letter) {
            if !answer.contains(letter) {
                answer.append(letter)
            }
        }
    }
    
    return answer
}

agentWrite = generate(from: 2, to: 20)
robertSays = popularLetters(in: agentWrite)
