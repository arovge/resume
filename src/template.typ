#let sect_title(title) = {
    align(left,
        block[
            #text(weight: "bold", bottom-edge: 0pt)[#title]
            #v(-5pt)
            #line(length: 100%, stroke: 0.5pt)
        ]
    )
}

#let sect(title, company, duration, location, bullets: ()) = {
    grid(
        columns: (3fr, 3fr),
        align(left)[
            #title \
            #company
        ],
        align(right)[
            #duration \
            #location
        ]
    )
    if bullets.len() > 0 {
        list(indent: 0.25in, ..bullets)
    }
    v(5pt)
}
