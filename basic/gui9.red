Red [needs: 'view]
mycontacts: copy [
    "John Smith" "123 Tomline Lane Forest Hills, NJ" "555-1234"
    "Paul Thompson" "234 Georgetown Pl. Peanut Grove, AL" "555-2345"
    "Jim Persee" "345 Pickles Pike Orange Grove, FL" "555-3456"
    "George Jones" "456 Topforge Court Mountain Creek, CO" ""
    "Tim Paulson" "" "555-5678"
]
names: copy []
foreach [name address phone] mycontacts [append names name]
view [
    below
    t: text-list data names [
        n/text: pick t/data t/selected
        a/text: pick mycontacts (
            1 + index? find mycontacts (pick t/data t/selected)
        )
        p/text: pick mycontacts (
            2 + index? find mycontacts (pick t/data t/selected)
        )
    ]
    text "Name:"
    n: field
    text "Address:"
    a: field
    text "Phone:"
    p: field
]