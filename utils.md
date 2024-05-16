---
layout: default
title: Utils
---

<section>
  <h2>UtilsComponents</h2>
  <ul>
    {% for component in site.data.utils_components.children %}
      <li>{{ component.title }}</li>
    {% endfor %}
  </ul>
</section>

<section>
  <h2>Widgets</h2>
  <ul>
    {% for widget in site.data.widgets.children %}
      <li>{{ widget.title }}</li>
    {% endfor %}
  </ul>
</section>

<section>
  <h2>UtilsFunctions</h2>
  <ul>
    {% for function in site.data.utils_functions.children %}
      <li>{{ function.title }}</li>
    {% endfor %}
  </ul>
</section>