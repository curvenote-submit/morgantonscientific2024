#set text(font: "Noto Sans", size: 10pt)

#let spacer = text(fill: gray)[ #h(8pt) | #h(8pt)]


#let papers = yaml("papers.yml")

#set page(
  paper: "us-letter",
  footer: block(
    width: 100%,
    stroke: (top: 1pt + gray),
    inset: (top: 8pt, right: 2pt),
    [
      The Morganton Scientific | Volume 1 | 2023 - 2024
      #h(1fr)
      #counter(page).display()
    ]
  )
)

#align(center)[
  #v(14em)
  #image("logo.png", width: 50%)
  #v(3em)
  #text(size:20pt, weight: "bold")[The Morganton Scientific]
  #v(1em)
  #text(size:13pt)[North Carolina School of Science and Mathematics]
  #v(0.3em)
  #text(size:10pt)[Journal of Student STEM Research]
  #v(0.5em)
  #text(size:10pt, fill: black.lighten(40%), link("https://doi.org/[-doc.biblio.doi-]")[https://doi.org/[-doc.biblio.doi-]])
]

#pagebreak()

#show heading: set text(fill: rgb("#C18849"))

= Table of Contents

#v(1em)
#{
  for paper in papers {
      table(
        columns: (35pt, auto),
        inset: 0em,
        stroke: none,
        gutter: 0em,
        [ #emph(str(paper.at("page")))], [ #text(size: 12pt, style: "italic", paper.at("title"))],
      )
      if ("author" in paper) {
        table(
          columns: (35pt, auto),
          inset: 0em,
          stroke: none,
          gutter: 0em,
          [], [ #text(size: 10pt, fill: black.lighten(20%), upper(paper.at("author")))]
        )
      }
      v(3pt)
    }
}

#pagebreak()

[-CONTENT-]
