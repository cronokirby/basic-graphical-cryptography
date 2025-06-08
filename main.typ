#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "src/paper.typ" as paper: todo

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

#todo[State our goal of defining "systems"]

#todo[Show some final diagrams we aim to have]

== String Diagrams

We start with basic systems that have only
a single input and output.
These are sometimes called _functions_, but we avoid this term,
as it suggests that these systems are mere mathematical functions,
which is not the case.
The jargon here, instead, is that of a _morphism_.
In our case of cryptography, such morphisms may have effects,
such as randomness.
In general, these morphisms may not even be functions at all,
for more abstract categories.

We depict a morphism $f : A -> B$ as a box, with one input wire,
and one output wire:

#align(center, diagram(spacing: 2em,
  edge((-1, 0), (0, 0), label: [A], label-pos: 20%),
  node((0, 0), $f$, shape: rect, stroke: 0.8pt),
  edge((1, 0), (0, 0), label: [B], label-pos: 20%),
))

The input and output wires are labelled with the type of object
on that wire.
We often omit these labels, when the object is clear from other
context.

== Copying and Deleting

== Backwards Arrows

= Some Cryptography Exercises

= Concrete Semantics

= State Separable Proofs

= Past and Future

= Conclusion
