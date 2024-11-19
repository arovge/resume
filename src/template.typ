#let section_title(title) = {
    align(left,
        block[
            #text(size: 12pt, weight: "bold")[#title]
            #v(-10pt)
            #line(length: 100%, stroke: 0.5pt)
        ]
    )
}

#let section_col(l_value, r_value) = {
    grid(
        columns: (3fr, 3fr),
        align(left)[
            #l_value
        ],
        align(right)[
            #r_value
        ]
    )
    v(-7.5pt)
}

#let section(title, company, duration, location, bullets: ()) = {
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
    v(-5pt)
    if bullets.len() > 0 {
        list(indent: 0.25in, ..bullets)
    }
    v(5pt)
}
