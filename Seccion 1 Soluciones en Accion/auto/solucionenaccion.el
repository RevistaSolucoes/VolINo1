(TeX-add-style-hook "solucionenaccion"
 (lambda ()
    (TeX-add-symbols
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
     "solucionenaccion_text")))

