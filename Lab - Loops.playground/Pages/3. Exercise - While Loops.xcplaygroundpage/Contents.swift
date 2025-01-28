/*:
 ## BOOM !.
 
 On va utiliser une boucle while pour créer une bombe. En utilisant le compte à rebours countdown, on fera en sorte d'afficher chaque seconde tant que countdown est supérieur à 0. Utilisez une condition if dans la boucle qui imprime "BOOM" quand countdown est égal à 0.
 */
var countdown: Int32 = 10

while countdown >= 0 {
    if countdown == 0 {
        print("BOOM")
    } else {
        print(countdown)
    }
    countdown -= 1
}
//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - While Loops](@next)
