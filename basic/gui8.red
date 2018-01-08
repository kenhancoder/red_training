Red [needs: 'view]
mylist: ["John" 2804 "Dave" 9439 "Jane" 2386 "Bob" 9823 "Sue" 4217]
names: copy []
foreach [n c] mylist [append names n]
view [
    t: text-list data names [
        print pick face/data face/selected
        print find mylist (pick face/data face/selected)
        probe form index? find mylist (pick face/data face/selected)
    ]
]