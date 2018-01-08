Red [title: "test" needs: 'view]
; view [
;     across
;     ; below
;     button
;     field
;     text "Red is really pretty easy to program."
;     text-list
;     check
; ]

; view [
;     below
;     button red "Click Me" yellow              
;     field 400 "Enter some text here"  
;     text font-size 16 "Red is really pretty easy to program." purple yellow
;     text-list 400x300 data ["line 1" "line 2" "another line"]
;     check yellow
; ]

; view [
;     button "Click me" [print "You clicked the button."]
; ]

; view [
;     below
;     text "Some action examples.  Try using each widget:"
;     button red "Click Me" [
;         print "You clicked the red button."
;     ]
;     f: field 400 "Type some text here, then press [Enter]" [
;         print f/text
;     ]
;     t: text-list 400x300 data ["Select this" "Then this" "Now this"][
;         print pick t/data t/selected
;     ]
;     check yellow [print "You clicked the yellow check box."]
;     button "Quit" [unview]    
; ]

; view [
;     below
;     a: area                               ; an area widget labeled 'a
;     f: field                              ; a field widget labeled 'f
;     across
;     button "Show" [print a/text]
;     button "Save" [write %somedatafile.txt a/text]
;     button "Load" [f/text: read %somedatafile.txt]
; ]

; view [
;     below
;     t: text-list 400x300 data ["1" "2" "3"]                ; a text-list labeled 't
;     button "Show Selected" [print pick t/data t/selected]
; ]

gui: copy []
foreach color [red green blue] [
    append gui reduce ['text color]
]
view layout gui