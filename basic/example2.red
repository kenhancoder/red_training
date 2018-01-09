Red [needs: 'view] 
view [ 
     title "Tile Game"
     backdrop silver
     style t: button 100x100 [
         x: face/offset
         print x
         face/offset: e/offset 
         e/offset: x
     ] 
     t "8"  t "7"  t "6"  return 
     t "5"  t "4"  t "3"  return 
     t "2"  t" 1"  e: base silver
]