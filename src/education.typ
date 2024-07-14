#import "template.typ": sect_title, sect

#let msoe = {
    sect(
        "Milwaukee School of Engineering",
        ("B.S. Software Engineering", "Minor in User Experience").join("\n"),
        "September 2017 – May 2021",
        ("Milwaukee, WI", "GPA: 3.5 / Major GPA: 3.7").join("\n")
    )
}

#let education = {
    sect_title("EDUCATION")
    msoe
}
