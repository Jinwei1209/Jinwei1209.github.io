---
permalink: /
title: "Intelligent MRI Lab"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<p class="home-intro">The Intelligent MRI Lab is a new research group at the University of Massachusetts Amherst developing artificial intelligence and computational MRI methods for quantitative neuroimaging, accelerated acquisition, quantitative susceptibility mapping, and white matter lesion analysis.</p>

## About Us

We build methods at the intersection of imaging physics, inverse problems, machine learning, and clinical neuroimaging. Our goal is to make MRI faster, more quantitative, and more useful for understanding brain disease and supporting translational research.

## Research

- Accelerated quantitative MRI
- Quantitative susceptibility mapping
- Multiple sclerosis lesion analysis
- Longitudinal lesion tracking
- AI for computational neuroimaging

Learn more on the [Research](/research/) page.

## Recent Updates

{% for post in site.posts limit:3 %}
- **{{ post.date | date: "%b %Y" }}**: [{{ post.title }}]({{ post.url }})
{% endfor %}

See all updates on the [News](/news/) page.

## Openings

The lab is currently being established. We welcome inquiries from prospective PhD students, postdocs, and collaborators interested in MRI, machine learning, image reconstruction, and clinically relevant neuroimaging.

See the [Openings](/openings/) page for details, or email [jinweizhang@umass.edu](mailto:jinweizhang@umass.edu).

## Contact

University of Massachusetts Amherst  
Life Sciences Laboratories, Room S607  
Goessmann Laboratory, Room 266  
Email: [jinweizhang@umass.edu](mailto:jinweizhang@umass.edu)
