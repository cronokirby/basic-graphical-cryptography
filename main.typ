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
