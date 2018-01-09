Red [needs: 'view]
extract-names: func [] [
    clear names
    foreach [name address phone] contacts [append names name]
    if names = [] [names: [""]]
    copy names
]
if not find read %. %contacts [save %contacts []]
contacts: load %contacts   
names: [""]
names: extract-names
view [
    title "Contacts"
    t: text-list data names [
        n/text: copy pick t/data t/selected
        a/text: copy pick contacts (
            1 + index? find contacts pick t/data t/selected
        )
        p/text: copy pick contacts (
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
            append contacts reduce [copy n/text copy a/text copy p/text]
            extract-names
        ]
        button "Save" [save %contacts contacts]
    ]
]
