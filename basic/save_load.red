Red []

; save %mycontacts ["John" "Bill" "Jane" "Ron" "Sue"]

; print load %mycontacts

; probe load %mycontacts
; what/spec
; l: []
; foreach [a b c] what/buffer [
;     if a<>""
;     append l a
;     append l "   "
;     append l b
;     append l "   "
;     append l c
;     append l "^M^/"
; ]
; save %what l