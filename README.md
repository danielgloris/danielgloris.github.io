# Daniel Gloris — Academic Website

An English academic website based on the supplied CV. The site uses Jekyll, local assets, and a layout closely following the original Academic Pages structure: a compact top navigation, author sidebar, and a single content column. It has not been published or pushed to GitHub.

## Preview locally

On this Mac, double-click `scripts/Website-Vorschau.command` in Finder. It opens the running preview in your default browser, or starts the local server and opens the browser automatically. When it starts the server, keep the Terminal window open; press Ctrl+C to stop it.

You can also open <http://127.0.0.1:4000> in Codex, Safari, Chrome, or Firefox while the server is running. Refresh the browser after changing the content. For a quick mobile layout check, make the browser window narrower.

Alternatively, run `npm run dev` in the project folder. This uses the same local server. If it is already running, open the address above instead of starting a second server.

With Ruby 3.1 or newer and Bundler installed:

```sh
ruby -S bundle install
ruby -S bundle exec jekyll serve --host 127.0.0.1 --port 4000
```

Open <http://127.0.0.1:4000>. This server is accessible only on your own computer. To generate the static files without starting a server:

```sh
ruby -S bundle exec jekyll build
```

The generated website is in `_site/`, which is ignored by Git. Neither command publishes the website. Do not push changes or trigger a deployment unless publication is explicitly authorised.

## Edit the content

| File | Content |
| --- | --- |
| `_data/profile.yml` | Academic positions, education, contact details, external profiles, workshops |
| `_data/publications.yml` | Publications, citations, DOI links, selected work |
| `_data/manuscripts.yml` | Submitted and under-review manuscripts |
| `_data/talks.yml` | Conference presentations and invited talks |
| `_data/teaching.yml` | Teaching themes and representative courses |
| `_data/navigation.yml` | Main navigation |
| `_pages/about.md` | Homepage and short biography |
| `_pages/research.md` | Research interests |
| `_pages/publications.html` | Publication list |
| `_pages/talks.html` | Conference presentations and invited talks |
| `_pages/teaching.html` | Teaching page |
| `_pages/cv.md` | Web CV |
| `_pages/contact.md` | Contact page |
| `_layouts/academic.html` | Shared layout, author sidebar, navigation, metadata, footer |
| `_includes/academic-profile-links.html` | Profile links and contact information in the sidebar |
| `assets/css/academic.css` | Responsive design and print styling |
| `images/daniel-gloris.jpg` | Portrait extracted from the supplied CV |
| `files/CV_DanielGloris.pdf` | Unmodified copy of the supplied CV |

The website contains no analytics, external fonts, JavaScript dependencies, or contact-form service. The PDF is the original full CV; replace it when the CV changes. The web biography and web CV omit personal birth details. Publication titles are retained in their original language. Teaching is grouped by topic; the PDF contains the full course list by semester. The 2020 reprinted chapter is identified as a reprint, and submitted manuscripts are listed separately from published work.

## Design references

The visual structure follows the original Academic Pages template, including its system sans-serif typography, compact headings, profile sidebar, and separate publications and talks pages. The academic content organisation was also informed by the personal websites of [Allison Harell](https://allisonharell.com/) and [Noam Gidron](https://noamgidron.com/): a short biography, research interests, publications, and direct academic contact links. All biographical and scholarly claims about Daniel Gloris come from the supplied CV.

## Upstream template

This repository originated from [Academic Pages](https://github.com/academicpages/academicpages.github.io). Its unused layouts, examples, and tools are retained for reference. `_config.yml` excludes demonstration pages, posts, collections, PDFs, and assets from the build. The active website uses `_layouts/academic.html`; it uses the upstream Academicons locally and excludes all sample content. Its responsive profile and navigation disclosures work without JavaScript.

The original MIT licence is retained in `LICENSE`.
