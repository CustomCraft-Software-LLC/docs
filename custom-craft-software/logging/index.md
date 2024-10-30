---
title: Custom Craft Software - Logging
layout: default
permalink: /custom-craft-software/logging/
---

<div class="has-text-centered">
  <h1>Custom Craft Software - Logging</h1>
  <h2>Overview</h2>
  <p>This package provides logging utilities for managing and recording application events, errors, and other key activities.</p>
  <h2>Components</h2>
</div>

<div class="container">
  <div class="columns is-multiline">
    
    <div class="column is-6-tablet is-4-desktop">
      <div class="box">
        <h3 class="title is-5">Log</h3>
        <p><strong>Description:</strong> Handles individual log entries, capturing specific event details, messages, and timestamps.</p>
        <p><strong>Example Usage:</strong></p>
        <pre><code>
// Example usage of Log
import Log from './logging/Log';

const logEntry = new Log('User login attempt', 'info', new Date());
logEntry.save();

console.log(logEntry.message); // Output: "User login attempt"
        </code></pre>
      </div>
    </div>
    
    <div class="column is-6-tablet is-4-desktop">
      <div class="box">
        <h3 class="title is-5">Logger</h3>
        <p><strong>Description:</strong> Manages logging activities, enabling configurations for different log levels such as info, warning, error, and more.</p>
        <p><strong>Example Usage:</strong></p>
        <pre><code>
// Example usage of Logger
import Logger from './logging/Logger';

const logger = new Logger({ level: 'info' });

logger.log('User logged in', 'info');
logger.log('Unauthorized access attempt', 'warn');
logger.log('Application error encountered', 'error');

// Retrieve all logs
console.log(logger.getLogs());
        </code></pre>
      </div>
    </div>

  </div>
</div>