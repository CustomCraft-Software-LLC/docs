---
title: Utility Functions Documentation
layout: default
permalink: /utils/functions/

functions:
  - name: validateContactForm
    description: "Takes user data and validates contact form"
    params:
      - name: formData
        type: FormData
        description: "Takes formData"
    returns: 
      type: Errors
      description: "Returns validation errors"
  - name: validateEmail
    description: "Validate email"
    params:
      - name: email
        type: string
        description: "Email to be validated"
    returns:
      type: boolean
      description: "Returns true if email is valid"
  - name: validatePassword
    description: "Validate password with given regex"
    params:
      - name: password
        type: string
        description: "Password to be validated"
      - name: regex
        type: RegExp
        description: "Regex pattern to validate password"
    returns:
      type: boolean
      description: "Returns true if password matches the regex"
  - name: validatePhoneNumber
    description: "Validate phone number"
    params:
      - name: phoneNumber
        type: string
        description: "Phone number to be validated"
    returns:
      type: boolean
      description: "Returns true if phone number is valid"
  - name: parseJSON
    description: "Parse JSON string into object"
    params:
      - name: json
        type: string
        description: "JSON string to be parsed"
    returns: 
      type: any
      description: "Parsed object"
  - name: sortTable
    description: "Sort table"
    params:
      - name: table
        type: number[]
        description: "Array of numbers to be sorted"
    returns:
      type: number[]
      description: "Sorted array of numbers"
  - name: formatText
    description: "Format HTML string to be formatted HTML string list"
    params:
      - name: text
        type: string
        description: "Text to be formatted"
    returns:
      type: any
      description: "Formatted text list"
  - name: setCookie
    description: "Set a cookie"
    params:
      - name: name
        type: string
        description: "Name of the cookie"
      - name: expDate
        type: number
        description: "Expiration date of the cookie"
    returns:
      type: void
      description: "No return value"
  - name: removeCookie
    description: "Remove a cookie"
    params:
      - name: name
        type: string
        description: "Name of the cookie to be removed"
    returns:
      type: void
      description: "No return value"
---


<section class="section">
  <div class="container">
    <h1 class="title primary-text">{{ page.title }}</h1>

    <h2 class="subtitle secondary-text">Represents FormData</h2>
    <table class="table">
      <thead>
        <tr>
          <th class="secondary-text">Field</th>
          <th class="secondary-text">Description</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="secondary-text">first_name</td>
          <td class="secondary-text">The first name submitted</td>
        </tr>
        <tr>
          <td class="secondary-text">last_name</td>
          <td class="secondary-text">The last name submitted</td>
        </tr>
        <tr>
          <td class="secondary-text">email</td>
          <td class="secondary-text">The email submitted</td>
        </tr>
        <tr>
          <td class="secondary-text">phone_number</td>
          <td class="secondary-text">The phone number submitted</td>
        </tr>
        <tr>
          <td class="secondary-text">message</td>
          <td class="secondary-text">The message submitted</td>
        </tr>
      </tbody>
    </table>

    <h2 class="subtitle secondary-text">interface Error</h2>
    <table class="table">
      <thead>
        <tr>
          <th class="secondary-text">Field</th>
          <th class="secondary-text">Description</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="secondary-text">first_name</td>
          <td class="secondary-text">The first name error message</td>
        </tr>
        <tr>
          <td class="secondary-text">last_name</td>
          <td class="secondary-text">The last name error message</td>
        </tr>
        <tr>
          <td class="secondary-text">email</td>
          <td class="secondary-text">The email error message</td>
        </tr>
        <tr>
          <td class="secondary-text">phone_number</td>
          <td class="secondary-text">The phone number error message</td>
        </tr>
        <tr>
          <td class="secondary-text">message</td>
          <td class="secondary-text">The message error message</td>
        </tr>
      </tbody>
    </table>

    <h2 class="subtitle secondary-text">Functions</h2>

    {% for function in page.functions %}
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
