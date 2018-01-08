Red [
    Title: ""
    Needs: 'View
]

mylist: copy ["John" 2804 "Dave" 9439 "Jane" 2386 "Bob" 9823 "Sue" 4217]
names: extract mylist 2
numbers: extract/index mylist 2 2
view [
    t: text-list data numbers
]