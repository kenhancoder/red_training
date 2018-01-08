Red [needs: 'view]
mylist: ["John" 2804 "Dave" 9439 "Jane" 2386 "Bob" 9823 "Sue" 4217]
names: copy []
foreach [n c] mylist [append names n]
view [
    t: text-list data names [probe pick t/data t/selected]
]