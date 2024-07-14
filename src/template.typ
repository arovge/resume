#let sect_title(title) = {
    align(left,
        block[
            #text(size: 12pt, weight: "bold")[#title]
            #v(-10pt)
            #line(length: 100%, stroke: 0.5pt)
        ]
    )
}

#let sect(title, company, duration, location, bullets: ()) = {
    v(-5pt)
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
