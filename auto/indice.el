(TeX-add-style-hook "indice"
 (lambda ()
    (TeX-add-symbols
     '("mc" 2))
    (TeX-run-style-hooks
     "graphicx"
     "tabularx"
     "xcolor"
     "table"
     "svgnames"
     "dvipsnames"
     "usenames"
     "fontenc"
     "T1"
     "venturis2"
     "inputenc"
     "utf8"
     "babel"
     "portuguese"
     "latex2e"
     "scrartcl10"
     "scrartcl"
     "")))

