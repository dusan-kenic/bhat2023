---
layout: default
---

Welcome to the course!

We're excited that you've joined us. What follows is a list of all of the course
exercises.

{% assign sorted_exercises = site.pages | sort:"exercise" %}
<ul>
{% for page in sorted_exercises %}
{% if page.title contains "Exercise:" and page.exercise < 999 %}
<li><a href="{{ page.url }}">{{ page.title }}</a></li>
{% endif %}
{% endfor %}
</ul>

## Course Website

The official BlackHat course website can be found at: <https://www.blackhat.com/us-23/training/schedule/index.html#abusing-and-protecting-kubernetes-linux-and-containers-30793>
