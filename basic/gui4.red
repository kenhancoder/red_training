Red [needs: 'view]
mylist: copy ["John" "Dave" "Jane" "Bob" "Sue"]
nextlist: ["哈哈哈" "啦啦啦" "yaya"]
view [
    t: text-list data []
    do [
        a: append t/data mylist
    ]
    button "Add Items to List" [append t/data nextlist]
]