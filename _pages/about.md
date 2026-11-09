---
layout: academic
title: About me
description: "Daniel Gloris is a Research Associate and PhD Candidate at TU Dortmund University, studying political attitudes, political behaviour, tolerance, and polarisation."
permalink: /
---
# About me

I am a Research Associate and PhD Candidate at the Chair of Political Science, led by Prof. Dr. Christoph Schuck, in the Department of Philosophy and Political Science at TU Dortmund University.

My research draws on political psychology to study political attitudes and behaviour, particularly tolerance, polarisation, and attitudes towards climate change. My recent work examines how climate change threats relate to political tolerance and authoritarian aggression, drawing on survey experiments in Germany and the US General Social Survey.

## Research interests

- **Substantive:** {{ site.data.profile.interests | join: ', ' }}.
- **Methodological:** {{ site.data.profile.methods | join: ', ' }}.

## Academic positions

{% assign homepage_positions = site.data.profile.positions | where: 'homepage', true %}
{% for position in homepage_positions %}- **{{ position.title }}**{% if position.institution %}, {{ position.institution }}{% endif %} ({{ position.period }}).
{% endfor %}

## Education

- **PhD in Political Science (in progress)**, TU Dortmund University (expected completion in 2027).
- **MA in Political Science and MA in Philosophy**, Philipps University Marburg (2019).
- **BA in Political Science**, Philipps University Marburg (2015).

Further information about my work is available on the [research]({{ '/research/' | relative_url }}), [publications]({{ '/publications/' | relative_url }}), [talks]({{ '/talks/' | relative_url }}), and [teaching]({{ '/teaching/' | relative_url }}) pages. You can also [view my CV]({{ '/cv/' | relative_url }}) or [download the full CV (PDF)]({{ site.data.profile.cv | relative_url }}).
