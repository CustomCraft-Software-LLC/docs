---
title: Custom Craft Software - Hooks
layout: default
permalink: /custom-craft-software/hooks/
---

<div class="has-text-centered">
  <h1>Custom Craft Software - Hooks</h1>
  <h2>Overview</h2>
  <p>This package includes a set of React hooks designed to simplify state management, data fetching, and other common functionalities.</p>
  <h2>Hooks</h2>
</div>

<div class="container">
  <div class="columns is-multiline">
    
    <div class="column is-6-tablet is-4-desktop">
      <div class="box">
        <h3 class="title is-5">useFetch Hook</h3>
        <p><strong>Description:</strong> Fetches data from APIs while managing loading and error states for a seamless data retrieval experience.</p>
        <p><strong>Example Usage:</strong> Use <code>useFetch</code> to retrieve data for any component. This hook manages API calls, automatically handling loading indicators and error messages, which is especially useful in applications where data updates frequently.</p>
        
<pre><code class="language-typescript">
// Import the hook in your component
import useFetch from './hooks/useFetch';

const DataComponent = () => {
  const { data, statusCode } = useFetch('https://api.example.com/data');

  if (statusCode === 500) {
    return <p>Error fetching data</p>;
  }

  return (
    <div>
      <h2>Data</h2>
      {data ? <pre>{JSON.stringify(data, null, 2)}</pre> : <p>Loading...</p>}
    </div>
  );
};
</code></pre>

      </div>
    </div>

    <div class="column is-6-tablet is-4-desktop">
      <div class="box">
        <h3 class="title is-5">useToggle Hook</h3>
        <p><strong>Description:</strong> Manages a boolean state that can be toggled on and off, perfect for handling visibility, active/inactive modes, and more.</p>
        <p><strong>Example Usage:</strong> Use <code>useToggle</code> to handle a modal’s open and close states. Simply call <code>useToggle</code> in your component, and use the toggle function it returns to switch between true and false states easily.</p>
        
<pre><code class="language-typescript">
// Import the hook in your component
import useToggle from './hooks/useToggle';

const ToggleComponent = () => {
  const [isVisible, toggleVisibility] = useToggle();

  return (
    <div>
      <button onClick={toggleVisibility}>
        {isVisible ? 'Hide' : 'Show'} Details
      </button>
      {isVisible && <p>Here are some additional details!</p>}
    </div>
  );
};
</code></pre>

      </div>
    </div>

  </div>
</div>