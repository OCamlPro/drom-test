(lang dune 2.0)
; This file is maintained by drom, using drom.toml
(name drom-test)
(allow_approximate_merlin)
(generate_opam_files true)

(package
 (name drom-test)

 (synopsis "The drom-test project")

 (description "The drom-test OCaml project")
 (depends
   (ocaml (= 4.10.0))
   (dune (and (>= 2.6.0) (< 3.0.0)))
 )
)
