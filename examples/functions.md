---
title: Utility Functions Documentation
layout: default
permalink: /examples/functions/
---

<section class="section">
  <div class="container">
    <h1 class="title primary-text">{{ page.title }}</h1>

    <h2 class="subtitle secondary-text">Functions</h2>

    {% for function in site.data.func_examples.functions %}
        <div class="box">
        <h3 class="title is-4 secondary-text">{{ function.name }}</h3>
        <p class="secondary-text"><strong class="secondary-text">Description:</strong> {{ function.description }}</p>
        <p><strong class="secondary-text">Parameters:</strong></p>
        <ul>
            {% for param in function.params %}
            <li class="secondary-text"><strong class="secondary-text">{{ param.name }}</strong> ({{ param.type }}): {{ param.description }}</li>
            {% endfor %}
        </ul>
        <p class="secondary-text"><strong class="secondary-text">Returns:</strong> {{ function.returns.type }}: {{ function.returns.description }}</p>
        {% if function.example %}
        <p><strong class="secondary-text">Example:</strong></p>
        <pre class="custom-box"><code class="primary-text">{{ function.example }}</code></pre>
        {% endif %}
        </div>
    {% endfor %}

  </div>
</section>