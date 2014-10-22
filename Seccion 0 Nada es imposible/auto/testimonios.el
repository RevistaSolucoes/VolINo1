(TeX-add-style-hook "testimonios"
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
     "testimonios_text")))

