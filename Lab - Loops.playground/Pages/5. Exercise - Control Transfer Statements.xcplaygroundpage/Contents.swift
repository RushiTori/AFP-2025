/*:
 ## Alphabet
 
 Créez une boucle for-in qui parcourt les caractères de l'alphabet et imprime toutes les lettres en continuant à la prochaine itération.
 */
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

func printFull() {
    for c in alphabet {
        print(c)
    }
}

//func printOdd() {
//    for (i, c) in alphabet.enumerated() {
//        if (i % 2 == 0) {
//            print(c)
//        }
//    }
//}
//
//func printEven() {
//    for (i, c) in alphabet.enumerated() {
//        if (i % 2 != 0) {
//            print(c)
//        }
//    }
//}

func printCond(_ cond: (Int, Character) -> Bool) {
    for (i, c) in alphabet.enumerated() {
        if (cond(i, c)) {
            print(c)
        }
    }
}

printCond() { (i: Int, c: Character) -> Bool in
    let vowels: String = "AEIOUYaeiouy"
    
    return vowels.contains(c)
}

printCond() { (i: Int, c: Character) -> Bool in
    return i % 2 == 0
}

printCond() { (i: Int, c: Character) -> Bool in
    return i % 2 == 1
}

printCond() { (i: Int, c: Character) -> Bool in
    return true
}
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Finding Movements](@next)
