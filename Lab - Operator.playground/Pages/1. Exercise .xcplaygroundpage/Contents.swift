/*:
 # Les Opérateurs
 - **[En savoir plus sur les opérateurs](https://www.notion.so/apple-foudation-program-toulouse/Op-rateur-bcfbf6af14674a04ac1bc1467a00e466?pvs=4 "Les opérateurs")**
 

 
 Les compétences attendues pour la série d'exercices suivante sont :
 1. Savoir utiliser les différents opérateurs - + / *
 2. Savoir utiliser l'affectation composé += -= *= /=
 3. Savoir traduire un type Int en Double et inversement
 */

/*:
 ## Exercice 1/14 :
 Vous décidez de construire une armoire et vous voulez savoir avant de la construire, la superficie que cela va prendre dans votre pièce. Créez 2 constantes, "width" et "height", avec les valeurs de 10 et 20 respectivement.
 Créez une constante "area" qui sera le résultat de la multiplication des 2 précédentes constantes et imprimez le résultat.
 */
let width: UInt32 = 10
let height: UInt32 = 20
let area: UInt32 = width * height

print("\(width) x \(height) = \(area)")
/*:
 ## Exercice 2/14 :
 Vous décidez de diviser votre armoire en deux pour la mettre dans deux pièces différentes. Vous voulez savoir si, en la divisant équitablement, vous aurez assez de place pour ranger vos plus grands objets.
 Créez une constante "roomArea" qui sera le résultat de la division de "area" par deux. Imprimez le résultat.

 */
let roomArea: UInt32 = area / 2

print(roomArea)
/*:
 ## Exercice 3/14 :
 Créez une constante "perimeter" dont la valeur est égale à "width + width + height + height", et imprimez le résultat.
 */
let perimeter: UInt32 = (width + height) * 2

print(perimeter)
/*:
 ## Exercice 4/14 :
 Créez une constante "integerDivisionResult" qui est le résultat de la division de 10 par 3, et imprimez le résultat.
 */
let integerDivisionResult: UInt32 = 10 / 3

print(integerDivisionResult)
/*:

 Créez deux constantes, "double10" et "double3", initialisez-les à 10 et 3, et déclarez-les en tant que "Double". Déclarez une dernière constante "divisionResult" égale à la division de "double10" par "double3". Imprimez le résultat de "divisionResult". Quelle est la différence avec la division entière ? Imprimez ce que vous remarquez.
 */
let double10: Double = 10
let double3: Double = 3
let divisionResult: Double = double10 / double3

print(divisionResult)
/*:
 ## Exercice 5/14 :
 Étant donnée la valeur de pi (3.1415927), créez une constante "radius" avec une valeur de 5.0, et calculez le diamètre et la circonférence du cercle en utilisant les équations suivantes :
1. *diameter = 2 * radius*
2. *circumference = 2 * pi * radius.*
 
 Imprimez le résultat.
 */
let pi = 3.1415927

let radius: Double = 5
let diameter: Double = 2 * radius
let circumference: Double = diameter * pi

print("radius: \(radius)")
print("diameter: \(diameter)")
print("circumference: \(circumference)")
/*:
 ## Exercice 6/14 :
 Votre application de fitness enregistre le rythme cardiaque de vos utilisateurs, mais vous aurez sûrement envie d'afficher le rythme cardiaque moyen sur la dernière heure.

 Créez 3 constantes, "heartRate1", "heartRate2", et "heartRate3". Donnez à chaque constante des valeurs différentes comprises entre 60 et 100.

 Créez une constante "addedHR" égale à la somme de tous les rythmes cardiaques. Et créez une constante "averageHR" égale à "addedHR" divisée par 3 pour avoir la moyenne.

 Imprimez le résultat.

 */
let heartRate1: UInt32 = UInt32.random(in: 60...100)
let heartRate2: UInt32 = UInt32.random(in: 60...100)
let heartRate3: UInt32 = UInt32.random(in: 60...100)

let addedHR: UInt32 = heartRate1 + heartRate2 + heartRate3

let averageHR: UInt32 = addedHR / 3

print(averageHR)
/*:
 Maintenant, créez trois nouvelles constantes, "heartRate1D", "heartRate2D" et "heartRate3D", égales aux précédentes valeurs "heartRate1", "heartRate2" et "heartRate3". Ces nouvelles constantes doivent être de type "Double".

 Créez une constante "addedHRD" égale à la somme des 3 rythmes cardiaques. Créez une constante "averageHRD" égale à "addedHRD" divisée par 3 pour avoir la moyenne des 3 nouvelles constantes.

 Imprimez le résultat. Est-il différent de la précédente moyenne ? Pourquoi ou pourquoi pas ?

 */
let heartRate1D: Double = Double(heartRate1)
let heartRate2D: Double = Double(heartRate2)
let heartRate3D: Double = Double(heartRate3)

let addedHRD: Double = heartRate1D + heartRate2D + heartRate3D

let averageHRD: Double = addedHRD / 3

print(averageHRD)
/*:
 ## Exercice 7/14 :
 Imaginez que pendant la journée, un utilisateur a fait 3 467 pas sur un objectif de 10 000 pas. Créez une constante "steps" et une constante "goal". Les deux constantes seront de type "Double" pour que vous puissiez faire les bons calculs. "steps" devrait avoir la valeur 3 467 et "goal" 10 000. Créez une constante "percentOfGoal" égale au pourcentage de pas faits dans la journée. Imprimez "percentOfGoal".
 (Pour trouver la formule de calcul d'un pourcentage, Google est votre ami !)
 */
let steps: Double = 3467
let goal: Double = 10000
let percentOfGoal: Double = steps / goal

print("\(steps) / \(goal) = \(percentOfGoal)%")
//: page 1 sur 2  |  [Next:](@next)
