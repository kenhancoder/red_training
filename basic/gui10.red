Red [needs: 'view]
contacts: copy []  names: copy [""]
view [
    t: text-list data names [
        n/text: pick t/data t/selected
        a/text: pick contacts (
            1 + index? find contacts pick t/data t/selected
        )
        p/text: pick contacts (
            2 + index? find contacts pick t/data t/selected
        )
    ]
    panel [
        below
        text "Name:"
        n: field 200
        text "Address:"
        a: field 200
        text "Phone:"
        p: field 200
        button "Add" [
            either find t/data n/text [
                print "same"
                n/text: ""
            ][
                append contacts reduce [copy n/text copy a/text copy p/text]
                append names copy n/text
                ; clear names
                ; foreach [name address phone] contacts [append names name]
            ]
        ]
    ]
]