---
layout: default
title: Functions
permalink: /utils/functions/
---

# Functions

This section details the functions and methods provided by the Custom Craft Software utils module. Below are some of the key utility functions available, grouped by category.

## String Utilities

### `capitalize`

Converts the first character of a string to uppercase and the remaining characters to lowercase.

**Example:**

```javascript
import { capitalize } from '@custom-craft-software/utils';

const title = 'hello world';
const capitalizedTitle = capitalize(title);
console.log(capitalizedTitle); // Output: 'Hello World'