Red [needs: 'view]
view [
    button "Click Me"
    button "Click Me" [print "I've been clicked!"]

    f: field "Type here, then click the button"
    button "Click Me" [
        f/text: "aaa"
        print f/text
    ]
]
