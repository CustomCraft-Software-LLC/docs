---
title: Utility Functions Documentation
layout: default

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
    example: |
      ```javascript
      const formData = { 
        first_name: "John", 
        last_name: "Doe", 
        email: "john.doe@example.com",
        phone_number: "123-456-7890",
        message: "Hello, World!"
      };
      const errors = validateContactForm(formData);
      console.log(errors);
      ```

  - name: validateEmail
    description: "Validate email"
    params:
      - name: email
        type: string
        description: "Email to be validated"
    returns:
      type: boolean
      description: "Returns true if email is valid"
    example: |
      ```javascript
      const isValid = validateEmail("john.doe@example.com");
      console.log(isValid); // true or false
      ```

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
    example: |
      ```javascript
      const regex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
      const isValid = validatePassword("Password123", regex);
      console.log(isValid); // true or false
      ```

  - name: validatePhoneNumber
    description: "Validate phone number"
    params:
      - name: phoneNumber
        type: string
        description: "Phone number to be validated"
    returns:
      type: boolean
      description: "Returns true if phone number is valid"
    example: |
      ```javascript
      const isValid = validatePhoneNumber("123-456-7890");
      console.log(isValid); // true or false
      ```

  - name: parseJSON
    description: "Parse JSON string into object"
    params:
      - name: json
        type: string
        description: "JSON string to be parsed"
    returns: 
      type: any
      description: "Parsed object"
    example: |
      ```javascript
      const jsonString = '{"name": "John", "age": 30}';
      const obj = parseJSON(jsonString);
      console.log(obj); // { name: "John", age: 30 }
      ```

  - name: sortTable
    description: "Sort table"
    params:
      - name: table
        type: number[]
        description: "Array of numbers to be sorted"
    returns:
      type: number[]
      description: "Sorted array of numbers"
    example: |
      ```javascript
      const table = [3, 1, 4, 1, 5, 9, 2];
      const sortedTable = sortTable(table);
      console.log(sortedTable); // [1, 1, 2, 3, 4, 5, 9]
      ```

  - name: formatText
    description: "Format HTML string to be formatted HTML string list"
    params:
      - name: text
        type: string
        description: "Text to be formatted"
    returns:
      type: any
      description: "Formatted text list"
    example: |
      ```javascript
      const htmlText = "<p>Hello, World!</p>";
      const formattedText = formatText(htmlText);
      console.log(formattedText); // [formatted HTML list]
      ```

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
    example: |
      ```javascript
      setCookie("user", 7);
      ```

  - name: removeCookie
    description: "Remove a cookie"
    params:
      - name: name
        type: string
        description: "Name of the cookie to be removed"
    returns:
      type: void
      description: "No return value"
    example: |
      ```javascript
      removeCookie("user");
      ```
---

<section class="section">
  <div class="container">
    <h1 class="title">{{ page.title }}</h1>

    <h2 class="subtitle">Functions</h2>

    {% for function in page.functions %}
        <div class="box">
        <h3 class="title is-4">{{ function.name }}</h3>
        <p><strong>Description:</strong> {{ function.description }}</p>
        <p><strong>Parameters:</strong></p>
        <ul>
            {% for param in function.params %}
            <li><strong>{{ param.name }}</strong> ({{ param.type }}): {{ param.description }}</li>
            {% endfor %}
        </ul>
        <p><strong>Returns:</strong> {{ function.returns.type }}: {{ function.returns.description }}</p>
        {% if function.example %}
        <p><strong>Example:</strong></p>
        <pre><code>{{ function.example }}</code></pre>
        {% endif %}
        </div>
    {% endfor %}

  </div>
</section>