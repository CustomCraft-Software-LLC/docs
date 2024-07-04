---
layout: default
title: Functions
permalink: /utils/functions/
---

## Represents FormData

| Field         | Description                |
| ------------- | -------------------------- |
| first_name    | The first name submitted   |
| last_name     | The last name submitted    |
| email         | The email submitted        |
| phone_number  | The phone number submitted |
| message       | The message submitted      |

## Represents Error Messages

| Field         | Description                      |
| ------------- | -------------------------------- |
| first_name    | The first name error message     |
| last_name     | The last name error message      |
| email         | The email error message          |
| phone_number  | The phone number error message   |
| message       | The message error message        |

## Functions

### validateContactForm
**Description:** Takes user data and validates contact form

**Parameters:**
- `formData` (FormData): Takes formData

**Returns:** 
- `Errors`: Returns validation errors

### validateEmail
**Description:** Validate email

**Parameters:**
- `email` (string): Email to be validated

**Returns:** 
- `boolean`: Returns true if email is valid

### validatePassword
**Description:** Validate password with given regex

**Parameters:**
- `password` (string): Password to be validated
- `regex` (RegExp): Regex pattern to validate password

**Returns:** 
- `boolean`: Returns true if password matches the regex

### validatePhoneNumber
**Description:** Validate phone number

**Parameters:**
- `phoneNumber` (string): Phone number to be validated

**Returns:** 
- `boolean`: Returns true if phone number is valid