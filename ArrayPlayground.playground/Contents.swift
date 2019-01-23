import UIKit

var str = "Hello, playground"
print(str)
str = "Hello, developer"
print(str)

let message1 = "You Are Awesome!"
var message2 = "You Are Great!"
let message3 = "You Are Fantastic!"

//message2 = "You Da Bomb!"

let messages = ["You Are Awesome", "You Are Fantastic", "You Are Great", "When the Genius Bar Needs Help, They Call You", "You Brighten My Day!","You Make Me Smile"]
print(messages[0])
print(messages[3])
print(messages)
print(messages[2])
print(messages[messages.count-1])
messages.first
messages.last

var musicians: [String] = []
musicians.count
musicians.first
musicians.append("Drake")
musicians.first
musicians = ["Sting", "Stewart", "Andy"]
musicians = musicians + ["Bono", "The Edge"]
musicians += ["Taylor Swift"]
musicians.append("Beyonce")
musicians.insert("Kanye", at: 0)
musicians.removeFirst()
print(musicians)
