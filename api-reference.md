---
layout: default
title: API Reference
---

<div class="section">
  <h1 class="title has-text-centered has-text-primary">API Reference</h1>
  <div class="content">
    <p>This is the API reference page. Here you will find detailed information about the API endpoints and how to use them.</p>

    <!-- Section for Endpoint Overview -->
    <h2 class="title is-4 has-text-info">Endpoint Overview</h2>
    <p>Our API provides the following endpoints to interact with the system:</p>
    <ul>
      <li><strong>GET /api/v1/resources</strong> - Retrieve a list of resources</li>
      <li><strong>POST /api/v1/resources</strong> - Create a new resource</li>
      <li><strong>GET /api/v1/resources/{id}</strong> - Retrieve a specific resource by ID</li>
      <li><strong>PUT /api/v1/resources/{id}</strong> - Update a specific resource by ID</li>
      <li><strong>DELETE /api/v1/resources/{id}</strong> - Delete a specific resource by ID</li>
    </ul>

    <!-- Section for Endpoint Details -->
    <h2 class="title is-4 has-text-info">Endpoint Details</h2>

    <!-- GET /api/v1/resources -->
    <h3 class="title is-5 has-text-info">GET /api/v1/resources</h3>
    <p>Retrieve a list of resources.</p>
    <h4 class="title is-6">Query Parameters</h4>
    <ul>
      <li><strong>page</strong> (optional) - The page number for pagination</li>
      <li><strong>limit</strong> (optional) - The number of items per page</li>
    </ul>
    <h4 class="title is-6">Response</h4>
    <pre><code>{
  "data": [
    {
      "id": 1,
      "name": "Resource Name",
      "description": "Resource Description"
    },
    ...
  ],
  "pagination": {
    "page": 1,
    "limit": 10,
    "total": 100
  }
}</code></pre>

    <!-- POST /api/v1/resources -->
    <h3 class="title is-5 has-text-info">POST /api/v1/resources</h3>
    <p>Create a new resource.</p>
    <h4 class="title is-6">Request Body</h4>
    <pre><code>{
  "name": "Resource Name",
  "description": "Resource Description"
}</code></pre>
    <h4 class="title is-6">Response</h4>
    <pre><code>{
  "id": 1,
  "name": "Resource Name",
  "description": "Resource Description",
  "created_at": "2023-06-29T12:34:56Z"
}</code></pre>

    <!-- Other endpoints follow a similar structure -->

  </div>
</div>