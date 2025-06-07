#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "src/paper.typ"

#let abstract = [
  Ahoy
]

#show: doc => paper.template(
  title: "Basic Graphical Cryptography",
  author: (name: "Lucas C. Meier", email: "lucas@cronokirby.com"),
  abstract: abstract,
  doc
)

= Introduction

= Abstract Graphical Language

#align(center, diagram(cell-size: 15mm, $
	G edge(f, ->) edge("d", pi, ->>) & im(f) \
	G slash ker(f) edge("ur", tilde(f), "hook-->")
$))

== String Diagrams

== Copying and Deleting

== Backwards Arrows

= Some Cryptography Exercises

= Concrete Semantics

= State Separable Proofs

= Past and Future

= Conclusion
