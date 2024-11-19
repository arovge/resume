#import "template.typ": section_title, section

#let first_mentor = {
    section(
        "FIRST Mentor – Charger Robotics Team 537",
        "",
        "October 2021 – Present",
        "",
        bullets: (
            "Taught programming concepts and problem solving skills to students, equipping them to continue learning independently and to contribute to the robot’s codebase.",
            "Liaised between senior mentors, department leaders and students to foster an environment of open communication, learning and community, resulting in a well-informed, close-knit team and high morale.",
            "Instilled FIRST Core Values and Gracious Professionalism into high school students, helping develop skills and behaviors to promote a healthy environment for learning and fun."
        )
    )
}

#let sdl = {
    section(
        "Fluoroscopy Simulator – Medical College of Wisconsin",
        "",
        "September 2019 – May 2020",
        "",
        bullets: (
            "Configured Raspberry Pi 3 as an automated deployment target for full-stack application, allowing for quick testing and iteration on a production platform.",
            "Created test suite with unit and end-to-end tests running in GitLab CI as Docker containers for consistent, reproducible tests to catch any issues from any end of the application."
        )
    )
}

#let projects = {
    section_title("MENTORSHIP & PROJECTS")
    first_mentor
    sdl
}
