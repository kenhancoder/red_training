Red []
; print "hello, world"
comment {
    verion: 0.0.1
}


name: "Ken"

; a: 0

; msg: either a <= 0 [
;    either a = 0 [
;        "zero"
;    ][
;        "negative"
;    ]
;  ][
;    "positive"
; ]

; print ["a is " msg lf]
; view [text "Hello Mac World!"]

view [
    t: text "French Touch! " on-time [move t/text tail t/text]
    base 21x15 draw [
        pen off
        fill-pen blue  box 0x0  6x14
        fill-pen white box 7x0  14x14
        fill-pen red   box 14x0 20x14
    ] return
    button "Start" [t/rate: 10]
]