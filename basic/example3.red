Red [needs: 'view]

h: load http://re-bol.com/heads.jpg
t: load http://re-bol.com/tails.jpg

view [
    title "Coin Flip"
    below
    i: image h
    f: field
    button "Flip" [
        f/text: first random ["Heads" "Tails"]
        either f/text = "Heads" [i/image: h] [i/image: t] 
    ]
]