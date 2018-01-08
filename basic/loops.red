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
