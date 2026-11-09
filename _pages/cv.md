---
layout: academic
title: Curriculum Vitae
permalink: /cv/
description: "Academic positions, education, service, funding, and methods training of Daniel Gloris, Research Associate and PhD Candidate at TU Dortmund University."
---
# Curriculum Vitae

[Download the full CV (PDF)]({{ site.data.profile.cv | relative_url }})

## Academic positions

{% include cv-entries.html entries=site.data.profile.positions %}

## Education

{% include cv-entries.html entries=site.data.profile.education %}

## Memberships and academic service

{% for membership in site.data.profile.memberships %}- {{ membership }}
{% endfor %}- Reviewer for Nomos

## Funding

Funding for a visit by Prof. James L. Gibson through the TU.hosts programme, Graduate Center, TU Dortmund University. April 2025, €3,986.

## Workshop organisation

{% for workshop in site.data.profile.workshop_organisation %}
### {{ workshop.title }}

{{ workshop.period }}. {{ workshop.detail }}

{% endfor %}
## Skills

- Research software and writing: R, SPSS, AMOS, LaTeX
- Languages: German (native), English (fluent)

## Methods workshops and professional development

{% include cv-entries.html entries=site.data.profile.workshops %}

## Publications, talks, and teaching

See the [publications]({{ '/publications/' | relative_url }}), [talks]({{ '/talks/' | relative_url }}), and [teaching]({{ '/teaching/' | relative_url }}) pages, or [download the complete CV]({{ site.data.profile.cv | relative_url }}).
