#let section_title(title) = {
    align(left,
        block[
            #text(size: 12pt, weight: "bold")[#title]
            #v(-10pt)
            #line(length: 100%, stroke: 0.5pt)
        ]
    )
}

#let fmt-title(title, org) = {
  if org.len() > 0 {
    title + ", " + org
  } else {
    title
  }
}

#let section(title, org: "", duration, bullets: ()) = {
    v(-5pt)
    grid(
        columns: (4fr, 2fr),
        align(left)[
            #fmt-title(title, org)
        ],
        align(right)[
            #duration
        ]
    )
    v(-5pt)
    if bullets.len() > 0 {
        list(indent: 0.25in, ..bullets)
    }
    v(5pt)
}
