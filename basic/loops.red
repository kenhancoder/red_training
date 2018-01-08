Red []

names: ["John" "Dave" "Jane" "Bob" "Sue"]
foreach name names [print name]


names: ["John" "Dave" "Jane" "Bob" "Sue"]
foreach name names [
    if find name "j" [print name]
]

numbers: [323 2498 94321 31 82]
foreach number numbers [
    if number > 300 [print form number]
]

print "******"
mycontacts: [
    "John Smith" "123 Tomline Lane Forest Hills, NJ" "555-1234"
    "Paul Thompson" "234 Georgetown Pl. Peanut Grove, AL" "555-2345"
    "Jim Persee" "345 Pickles Pike Orange Grove, FL" "555-3456"
    "George Jones" "456 Topforge Court Mountain Creek, CO" ""
    "Tim Paulson" "" "555-5678"
]
foreach [name address phone a] mycontacts [
    print a
]

print "******"
mycontacts: [
    "John Smith" "123 Tomline Lane Forest Hills, NJ" "555-1234"
    "Paul Thompson" "234 Georgetown Pl. Peanut Grove, AL" "555-2345"
    "Jim Persee" "345 Pickles Pike Orange Grove, FL" "555-3456"
    "George Jones" "456 Topforge Court Mountain Creek, CO" ""
    "Tim Paulson" "" "555-5678"
]
probe extract mycontacts 3          ; every 3 items 
                                    ; (the 1st column of above data)
probe extract/index mycontacts 3 2  ; every 3 items, starting with 2nd
                                    ; (the 2nd column of above data)

print '&&&&&&&&&'
probe extract mycontacts 3 2        ; same as probe extract mycontacts 3

names: ["John" "Dave" "Jane" "Bob" "Sue"]
repeat i (length? names) [
    print append append form i ": " pick names i
]

names: ["John" "Dave" "Jane" "Bob" "Sue"]
repeat i (length? names) [
    print append append pick names i " next: " pick names (i + 1)
]

count: 99
forever [
    print append form count " bottles of beer on the wall"
    count: count - 1
    if count = 0 [break]
]
