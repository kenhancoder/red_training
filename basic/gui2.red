Red [needs: 'view]
view [
    below
    f: field "Enter some lines here..."
    button "Save" [
        save %mydata append append load %mydata f/text "^M^/"
        print "Saved"
    ]
    a: area "All log entries will appear here when loaded..."
    button "Load" [
        a/text: form load %mydata
    ]
]