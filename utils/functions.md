---
title: Utility Functions Documentation
layout: default
permalink: /utils/functions/
---

<section class="section">
  <div class="container">
    <h1 class="title primary-text has-text-centered">{{ page.title }}</h1>

    <h2 class="subtitle secondary-text">interface FormData</h2>
    <table class="table">
      <thead>
        <tr>
          <th>Field</th>
          <th>Description</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>first_name</td>
          <td>The first name submitted</td>
        </tr>
        <tr>
          <td>last_name</td>
          <td>The last name submitted</td>
        </tr>
        <tr>
          <td>email</td>
          <td>The email submitted</td>
        </tr>
        <tr>
          <td>phone_number</td>
          <td>The phone number submitted</td>
        </tr>
        <tr>
          <td>message</td>
          <td>The message submitted</td>
        </tr>
      </tbody>
    </table>

    <h2 class="subtitle secondary-text">interface Error</h2>
    <table class="table">
      <thead>
        <tr>
          <th>Field</th>
          <th>Description</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>first_name</td>
          <td>The first name error message</td>
        </tr>
        <tr>
          <td>last_name</td>
          <td>The last name error message</td>
        </tr>
        <tr>
          <td>email</td>
          <td>The email error message</td>
        </tr>
        <tr>
          <td>phone_number</td>
          <td>The phone number error message</td>
        </tr>
        <tr>
          <td>message</td>
          <td>The message error message</td>
        </tr>
      </tbody>
    </table>

    <h2 class="subtitle secondary-text has-text-centered">Functions</h2>

    {% for function in site.data.func_utils.functions %}
    <div class="box">
      <h3 class="title is-4 secondary-text">{{ function.name }}</h3>
      <p class="secondary-text"><strong class="secondary-text">Description:</strong> {{ function.description }}</p>
      <p class="secondary-text"><strong class="secondary-text">Parameters:</strong></p>
      <ul>
        {% for param in function.params %}
        <li class="secondary-text"><strong class="secondary-text">{{ param.name }}</strong> ({{ param.type }}): {{ param.description }}</li>
        {% endfor %}
      </ul>
      <p><strong class="secondary-text">Returns:</strong></p>
      <p class="secondary-text">{{ function.returns.type }}: {{ function.returns.description }}</p>
    </div>
    {% endfor %}

  </div>
</section>
