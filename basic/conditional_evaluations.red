Red []

account: -10
if account < 0 [print "Your account is overdrawn."]


do [
    pass: ask "Enter Password:  "
    either pass = "secret" [
        print "Welcome back."
    ] [
        print "Incorrect password."
    ]
]

name: "john"
case [
    find name "a" [print {Your name contains the letter "a"}]
    find name "e" [print {Your name contains the letter "e"}]
    find name "i" [print {Your name contains the letter "i"}]
    find name "o" [print {Your name contains the letter "o"}]
    find name "u" [print {Your name contains the letter "u"}]
    true [print {Your name doesn't contain any vowels!}]
]
