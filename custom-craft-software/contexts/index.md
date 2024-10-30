---
title: Custom Craft Software - Contexts
layout: default
permalink: /custom-craft-software/contexts/
---

<div class="has-text-centered">
  <h1>Custom Craft Software - Contexts</h1>
  <h2>Overview</h2>
  <p>This package includes context utilities to simplify global state management in React applications.</p>
  <h2>Contexts</h2>
</div>

<div class="container">
  <div class="columns is-multiline">

    <div class="column is-6-tablet is-4-desktop">
      <div class="box">
        <h3 class="title is-5">AppContext and useAppContext</h3>
        <p><strong>Description:</strong> Provides a global context for managing app-wide state, allowing components to share and update common data.</p>
        <p><strong>Example Usage:</strong></p>
        <pre><code>
// AppContext example usage
import React, { createContext, useContext, useState } from 'react';

// Create context and provider
const AppContext = createContext(null);

export const AppProvider = ({ children }) => {
  const [state, setState] = useState('default');

  return (
    <AppContext.Provider value={% raw %}{{ state, setState }}{% endraw %}>
      {children}
    </AppContext.Provider>
  );
};

// Custom hook for accessing AppContext
export const useAppContext = () => {
  const context = useContext(AppContext);
  if (!context) throw new Error('useAppContext must be used within an AppProvider');
  return context;
};

// Usage in Component
const Component = () => {
  const { state, setState } = useAppContext();
  return (
    <div>
      <p>Current State: {state}</p>
      <button onClick={() => setState('newState')}>Change State</button>
    </div>
  );
};
        </code></pre>
      </div>
    </div>

    <div class="column is-6-tablet is-4-desktop">
      <div class="box">
        <h3 class="title is-5">UserContext and useUserContext</h3>
        <p><strong>Description:</strong> Manages user information globally, allowing components to access and modify the logged-in user’s details throughout the app.</p>
        <p><strong>Example Usage:</strong></p>
        <pre><code>
// UserContext example usage
import React, { createContext, useContext, useState } from 'react';

// Create context and provider
const UserContext = createContext(null);

export const UserProvider = ({ children }) => {
  const [user, setUser] = useState(null);

  return (
    <UserContext.Provider value={% raw %}{{ user, setUser }}{% endraw %}>
      {children}
    </UserContext.Provider>
  );
};

// Custom hook for accessing UserContext
export const useUserContext = () => {
  const context = useContext(UserContext);
  if (!context) throw new Error('useUserContext must be used within a UserProvider');
  return context;
};

// Usage in Component
const Component = () => {
  const { user, setUser } = useUserContext();
  return (
    <div>
      <p>User: {user ? user.name : 'Guest'}</p>
      <button onClick={() => setUser({ name: 'John Doe', email: 'john@example.com' })}>Set User</button>
    </div>
  );
};
        </code></pre>
      </div>
    </div>

  </div>
</div>