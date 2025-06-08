
#let defc = counter("definition")
#let thmc = defc

#let template(title: none, abstract: none, author: none, doc) = {
  set document(title: title, author: author.name)
  set page(
    paper: "a4",
    margin: (x: 1.6in, y: 1in),
    numbering: "1"
  )

  set text(
    font: "Stix Two Text",
    size: 11pt
  )

  show heading.where(level: 1): it => {
    defc.step(level: 1) 
    it
  }

  show math.equation.where(block: false): it => text(font: "Stix Two Math")[
    #it
  ]
  show math.equation.where(block: true): it => text(font: "Stix Two Math")[
    #v(-0.25em)
    #it
    #v(-0.5em)
  ]

  show list: it => {
    it
    v(-0.5em)
  }

  show heading: it => {
    v(0.2em)
    it 
    v(0.2em)
  }
  set heading(numbering: "1.1")

  set par(spacing: 1.5em)

  
  set cite(style: "alphanumeric")

  align(center, text(1.9em, hyphenate: false)[
    #title
  ])

  align(center, text(1.2em)[
    #author.name \
    #author.email \
    #parbreak()
    #datetime.today().display()
  ])

  set par(
    justify: true,
    leading: 0.8em
  )

  align(left, [
    #align(center, [
      #text(1.0em)[*Abstract*]
    ])
    #v(-0.5em)
    #pad(x: 2em, abstract)
  ])

  doc
}


#let definition(break_end: true, title: none, content) = {
  defc.step(level: 2)
  let counter = context defc.display();
  if title != none {
    text(weight: "bold")[Definition #counter: #title]
  } else {
    text(weight: "bold")[Definition #counter]
  }
  linebreak()
  content
  if break_end {
    linebreak()
  }
  [$square.stroked.medium$]
  parbreak()
}

#let theoremesque(name, title, content) = {
  thmc.step(level: 2)
  let counter = context thmc.display()
  text(weight: "bold")[#name #counter #{if title != none { [: #title] } else {[]}}]
  linebreak()
  content
  linebreak()
}

#let theorem(content, title: none) = theoremesque("Theorem", title, content)
#let lemma(content, title: none) = theoremesque("Lemma", title, content)
#let claim(content, title: none) = theoremesque("Claim", title, content)
#let construction(content, title: none) = theoremesque("Construction", title, content)

#let proof(content) = {
  text(weight: "bold")[Proof:]
  linebreak()
  content
  linebreak()
  [$square.filled.medium$]
  parbreak()
}

#let todo(content) = {
  highlight(fill: color.hsl(0deg, 100%, 90%))[
    #content
  ]
}
