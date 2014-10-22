(TeX-add-style-hook "jugando"
 (lambda ()
    (TeX-add-symbols
     '("setrow" 9)
     "vol"
     "Title"
     "Author")
    (TeX-run-style-hooks
     "latex2e"
     "scrartcl11"
     "scrartcl"
     "leqno"
     "11pt"
     "twoside"
     "a4paper"
     "../head"
     "jugando_text")))

