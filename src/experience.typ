#import "template.typ": section_title, section

#let ds_senior = {
    section(
        "Senior Software Engineer",
        org: "Direct Supply",
        "March 2024 – Present",
        bullets: (
            "Researched and introduced Swift structured concurrency to the iOS app, reducing the 90-day crash rate by ~94% from ~2,200 crashes to ~130 crashes, improving user experience and stability for ~25k monthly users.",
        )
    )
}

#let ds_swe = {
    section(
        "Software Engineer",
        org: "Direct Supply",
        "June 2021 – March 2024",
        bullets: (
            "Researched and introduced Swift structured concurrency to the iOS app, reducing the 90-day crash rate by ~94% from ~2,200 crashes to ~130 crashes, improving user experience and stability for ~25k monthly users.",
        )
    )
}

#let ds_intern = {
    section(
        "Software Engineer Intern",
        org: "Direct Supply",
        "June 2019 – June 2021",
        bullets: (
            "Assisted building and maintaining greenfield iOS app written in SwiftUI to replace legacy Xamarin app, reducing the crash rate from 9% to < 1%, reducing time for local development and time to ship a new version, and added thorough logging to make errors actionable for development team.",
            "Containerized legacy C# services to run in serverless AWS Fargate, moved secrets to HashiCorp Vault, and created infrastructure to serve traffic from Route53 to the ECS cluster, resulting in lowered maintenance costs and faster deployments."
        )
    )
}

#let ds = {
    ds_senior
    ds_swe
    ds_intern
}

#let rebentify = {
    section(
        "Consultant",
        org: "Rebentify Technologies",
        "July 2021 – October 2021",
        bullets: (
            "Configured GCP Cloud Run and Firebase staging/production environments to enable secure, reproducible deployments using a single Docker image and config-based changes.",
            "Implemented user authentication with Google Sign-In, removing the need to maintain a separate set of credentials for the users for increased security and less organization risk.",
            "Added client and server logging to proactively identify and prioritize bug fixes, minimizing reported issues."
        )
    )
}

#let experience = {
    section_title("EXPERIENCE")
    ds
    rebentify
}
