# resume

My resume as code

### How parsable is this for an ATS (applicant tracking system)?

No clue. Hopefully parseable, otherwise I wasted a lot of time on this. I'll update when I start using it.

### Local Development

Make sure you have LaTeX dependencies installed as well as the LuaTeX engine. The resume uses `FreeSerif` as its font so `GNU FreeFont` should also be installed.

To build, your system will need to have `GNU Make` to use make files.

The PDF (and build artifacts) can be generated with:

```bash
$ make all
```

The PDF (and build artifacts) can be deleted with:

```bash
$ make clean
```

### Release process

Run this locally:

```bash
 # Make sure we have the most up to date main so the tag is created with the correct repository history
 # Ideally we could create a tag via GitHubs interface but it seems like that would also create a release
 # We want actions to handle creating the release and uploading data to it
$ git checkout main
$ git pull origin main

$ git tag v0.0.0
$ git push origin v0.0.0
```

This will kick off GitHub actions to:

1. Create a new release for the pushed tag
2. Build the resume PDF and attach it to the release
3. Update cloud storage so the PDF can be reached via https://api.ajr.dev/files/austin-rovge-resume.pdf

### Why is this so complicated?

This is more complicated that I would have liked it to be. This project started with me wanting to be able to have my resume as code and have a GitHub runner build a new PDF of it when any changes have been made. The latest resume build would then be accessible on `ajr.dev` via a static link. However, for any assets that are attached to a GitHub release, they will be downloaded without the option to view the document in the browser

Here are the options I thought of for getting around this (in order of increasing complexity):

1. Store the built PDF in a `latest` GitHub branch
    * To me, tags do the same thing as release branches except they're immutable. Any release pipeline to a testing/prod environment can be a pipeline run off of each tag. So in using tags vs a release branch, this option felt like doing both. Using both a GitHub release to show the different iterations and a `release` branch just so I could view the PDF artifact in the browser felt off
2. Use GitHub repository webhook to trigger the `ajr.dev` build pipeline to push a new update
    * `ajr.dev` uses Cloudflare pags so this can be done easily. But this would require a simple script as a build step to download the latest PDF. I didn't want to couple the other projects build pipelines or to have a release of `resume` mean a deployment of `ajr.dev` would happen. What if this release failed? I didn't like coupling projects build pipelines and having one trigger automatically
3. Client side JS on ajr.dev to go to a static url, download a file, then open it in a new tab in the users browser.
    * Probably possible, but I just want to have a static link in the browser. I don't want to edit `ajr.dev` to not do this. What if I want to link directly to the resume from a different site?
4. Store in publicly cloud storage
    * Ideally using Cloudflare - meaning this would require a worker to sit in front of R2 to handle PUT/GET requests for the document. Maybe makes sense now if later on I want more endpoints built for any of my personal projects
