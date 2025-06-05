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

== String Diagrams

== Copying and Deleting

== Backwards Arrows

= Some Cryptography Exercises

= Concrete Semantics

= State Separable Proofs

= Past and Future

= Conclusion
