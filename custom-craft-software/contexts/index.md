---
title: Contexts
layout: default
permalink: /custom-craft-software/contexts/
---

<div class="has-text-centered">
  <h1>Contexts</h1>
  <p>This package provides essential contexts for managing global states and user-specific data within the application.</p>
  <h2>Components</h2>
</div>

<div class="container my-6">
  <p>These components simplify managing application-wide and user-specific data, making it easier to access and update information across various parts of your app. Below is an overview of each component, along with example usage scenarios:</p>

  <div class="columns is-multiline is-centered">
    
    <div class="column is-12-mobile is-6-tablet is-4-desktop">
      <div class="box">
        <h3 class="title is-5">AppContext</h3>
        <p><strong>Description:</strong> Manages global application states and configurations, such as theme settings, language preferences, and global notifications. This ensures consistent app behavior and allows for easy access to app-wide settings.</p>
        <p><strong>Example Usage:</strong> Use `AppContext` to store a dark mode setting, making it accessible throughout the app without passing props. For instance, wrap your main app component in `AppContext` and access it with the `useContext` hook in any component to toggle themes.</p>
      </div>
    </div>

    <div class="column is-12-mobile is-6-tablet is-4-desktop">
      <div class="box">
        <h3 class="title is-5">UserContext</h3>
        <p><strong>Description:</strong> Handles user-specific data, such as authentication state, user roles, and profile information. This context allows for centralized control over user data, making it easier to manage session states and user preferences.</p>
        <p><strong>Example Usage:</strong> Use `UserContext` to manage whether a user is logged in and what their access level is. For example, wrap the authenticated sections of your app in `UserContext` and use it to conditionally render content based on user roles or permissions.</p>
      </div>
    </div>

  </div>
</div>