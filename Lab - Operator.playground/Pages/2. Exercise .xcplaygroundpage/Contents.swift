/*:
 ## Exercice 8/14 :
 Déclarez une variable dont la valeur commence à 10. En utilisant l'addition, mettez à jour la valeur à 15 à l'aide de l'affectation composée "+=".

 À l'aide de la multiplication, mettez à jour la valeur à 30 à l'aide de l'affectation composée "*=". Imprimez la valeur de la variable après chaque affectation.
 */
var value: UInt32 = 10
print(value)

value += 5
print(value)

value *= 2
print(value)
/*:
 ## Exercice 9/14 :
 Créez une variable "piggyBank" qui commence à 0 et que vous utiliserez pour suivre vos gains et vos dépenses. Pour chaque point ci-dessous, utilisez les incréments raccourcis "+=", "*=", "-=" et "/=" appropriés pour mettre à jour le solde de votre tirelire.

 1. Votre voisine vous donne 10 dollars pour tondre sa pelouse.
 2. Vous gagnez 20 dollars de plus tout au long de la semaine en faisant des petits boulots.
 3. Vous dépensez la moitié de votre argent pour un dîner et un film.
 4. Vous triplez ce qu'il reste dans votre tirelire en lavant les vitres.
 5. Vous dépensez 3 dollars chez un dépanneur.
 Imprimez le solde de votre tirelire après chaque étape.
 */
var piggyBank: Int32 = 0

piggyBank += 10
print(piggyBank)


piggyBank += 20
print(piggyBank)


piggyBank /= 2
print(piggyBank)


piggyBank *= 3
print(piggyBank)


piggyBank -= 3
print(piggyBank)
/*:
 ## Exercice 10/14 :
 La caractéristique de base de votre application de suivi de la condition physique est le comptage des pas. Créez une variable appelée step et initialisez-la à 0, puis augmentez sa valeur de 1 pour simuler un utilisateur qui fait un pas. Imprimez la valeur de step.
 */
var step: UInt32 = 0
step += 1

print(step)
/*:
 ## Exercice 11/14 :
 Votre application de suivi de la condition physique suit la distance parcourue. Créez une variable appelée distance de type Double et initialisez-la à 50. Cela représentera un utilisateur ayant parcouru 50 pieds.

 Vous décidez cependant d'afficher la distance en mètres. 1 mètre est approximativement égal à 3 pieds. Utilisez un opérateur d'affectation composé pour convertir la distance en mètres. Imprimez le résultat.
 */
var distance: Double = 50
distance /= 3

print(distance)
/*:
 ## Exercice 12/14 :
 Imprimez ce que vous pensez que la valeur de 10 + 2 * 5 est. Ensuite, imprimez l'expression actuelle print(10 + 2 * 5).
 */
print(20)
print(10 + 2 * 5)
/*:
 Dans une déclaration distincte, ajoutez les parenthèses nécessaires pour que l'addition ait lieu avant la multiplication.
 */
print((10 + 2) * 5)
/*:
 Imprimez ce que vous pensez que la valeur de 4 * 9 - 6 / 2 évalue. Ensuite, imprimez l'expression réelle.
 */
print(33)
print(4 * 9 - 6 / 2)
/*:
 Dans une déclaration distincte, ajoutez les parenthèses nécessaires pour que la soustraction soit prioritaire sur la multiplication et la division.
 */
print(4 * (9 - 6) / 2)
/*:
 ## Exercice 13/14 :
 Une caractéristique que vous pourriez vouloir offrir aux utilisateurs est d'afficher leur température corporelle actuelle. Créez une constante appelée tempInFahrenheit égale à 98.6.

 Vous pouvez également afficher la température en degrés Celsius. Vous pouvez convertir la température en Fahrenheit en Celsius en soustrayant 32 de tempInFahrenheit, puis en multipliant le résultat par (5.0/9.0). Créez une constante appelée tempInCelsius qui calcule en une ligne la température en Celsius.

 Imprimez tempInCelsius.
 */
let tempInFahrenheit: Double = 98.6

let tempInCelcius: Double = (tempInFahrenheit - 32) * (5.0 / 9.0)

print(tempInCelcius)
/*:
 ## Exercice 14/14 :
 Créez une constante entière x avec une valeur de 10, et une constante de type Double y avec une valeur de 3.2. Créez une constante appelée multipliedAsIntegers égale à x multiplié par y. Est-ce que cela compile ? Si ce n'est pas le cas, corrigez-le en convertissant votre Double en un Int dans l'expression mathématique. Imprimez le résultat.
 */
let x: UInt32 = 10
let y: Double = 3.2
let multipliedAsInteger: UInt32 = x * UInt32(y)

print(multipliedAsInteger)
//: [Previous](@previous)  |  page 2 sur 2

