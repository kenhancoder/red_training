Red []

names: ["宝宝" "啊啊" "改过" "方法" "订单"]
codes: [2804 9439 2386 9823 4217]
files: [%employees %vendors %contractors %events]

print pick names 3          ; these two lines do
print names/3               ; exactly the same thing
print find names "Dave"
print sort names
print sort codes

names: ["宝宝" "啊啊" "改过" "方法" "订单"]
save %mynames names
loaded-names: load %mynames
probe loaded-names

insert at names 2 "哦哦"
print names

; pick
; find
; at
; index?
; length?
; append
; remove
; insert
; extract
; copy
; replace
; select
; sort
; reverse
; head
; next
; back
; last
; tail
; skip
; change
; poke
; clear
; join
; intersect
; difference
; exclude
; union
; unique
; empty?
; write
; read
; save
; load