// Guessing number game
abstract class Random

fun getNumber(num: Int) {

    val number = -1
    do {
        print("Guess the number: ")

        val number = Integer.valueOf(readLine())

        if (number > num)
            println("Smaller")
        else if (number < num)
            println("Bigger")
    } while (number != num)

    println("Congratulation! The number is $num!")
}


fun main(args: Array<String>) {
    println("Welcome to the guessing number game!")

    val num = (0..100).random()
    getNumber(num)
}