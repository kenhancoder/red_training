Red [title: "test" needs: 'view]
view [
    size 300x300
    img: image loose http://static.red-lang.org/red-logo.png
    return
    shade: slider 0%
    return
    text bold font-size 14 center "000x000" 
        react [face/text: form img/offset]
        react [face/font/color: white * shade/data]
]

digit: charset "0123456789"
view [
    style label: text bold right 40
    style err-msg: text font-color red hidden

    group-box "Person" 2 [
        origin 20x20
        label "Name" name: field 150
        label "Age"  age:  field 40
        label "City" city: field 150
        err-msg "Age needs to be a number!" react later [
            face/visible?: not parse age/text [any digit]
        ]
    ]
    button "Save" [save %person.txt reduce [name/text age/text city/text]]
]
set [name age city] load %person.txt
?? name ?? age ?? city


view [
    sld: slider return
    base 200x200 yellow
        draw  [circle 100x100 5]
        react [face/draw/3: to integer! 100 * sld/data]
]



view [
    below
    text "Some action examples.  Try using each widget:"
    button red "Click Me" [
        print "You clicked the red button."
    ] red
    f: field 400 "Type some text here, then press [Enter]" [
        print f/text
    ]
    t: text-list 400x300 data ["Select this" "Then this" "Now this"][
        print pick t/data t/selected
    ]
    check yellow [print "You clicked the yellow check box."]
    button "Quit" [unview]    
]