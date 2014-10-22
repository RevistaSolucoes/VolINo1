(TeX-add-style-hook "matematicaseningenieria_text"
 (lambda ()
    (LaTeX-add-bibliographies
     "catenaria")
    (LaTeX-add-labels
     "fig:1"
     "fig:2"
     "eq:7"
     "fig:0a"
     "fig:0b"
     "fig:test"
     "eq:8"
     "fig:15"
     "eq:9"
     "eq:4"
     "eq:5"
     "eq:1"
     "eq:2"
     "eq:3"
     "eq:6"
     "eq:10"
     "eq:11"
     "fig:4"
     "eq:12"
     "fig:6"
     "sec:fin")
    (TeX-run-style-hooks
     "catenaria_con_fuerzas"
     "catenaria_estandard_con_diferente_a")))

