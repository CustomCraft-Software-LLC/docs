---
layout: default
title: Custom Craft Software MUI Components
permalink: /mui-components/
---

<section class="section">
  <div class="container">
    <h1 class="title has-text-centered has-text-primary">MUI Components Documentation</h1>

    <div class="content">
      <p class="has-text-grey-dark">
        Welcome to the official documentation for Custom Craft Software's MUI components. This page provides an overview of each component, including usage examples. To install the package, use the following command:
      </p>
      <pre class="box"><code class="has-text-primary">npm install @custom-craft-software/mui-components</code></pre>
    </div>

    <div class="content">
      <h2 class="title is-4 has-text-grey-dark">Components List</h2>
      <ul>
        <li><a class="has-text-link" href="#animation">Animation</a></li>
        <li><a class="has-text-link" href="#calendar-widget">CalendarWidget</a></li>
        <li><a class="has-text-link" href="#contact-form">ContactForm</a></li>
        <li><a class="has-text-link" href="#event-calendar">EventCalendar</a></li>
        <li><a class="has-text-link" href="#faq-section">FAQSection</a></li>
        <li><a class="has-text-link" href="#features">Features</a></li>
        <li><a class="has-text-link" href="#get-quote-section">GetQuoteSection</a></li>
        <li><a class="has-text-link" href="#hero-section">HeroSection</a></li>
        <li><a class="has-text-link" href="#newsletter-signup">NewsletterSignup</a></li>
        <li><a class="has-text-link" href="#not-found">NotFound</a></li>
        <li><a class="has-text-link" href="#pricing">Pricing</a></li>
        <li><a class="has-text-link" href="#pricing-card">PricingCard</a></li>
        <li><a class="has-text-link" href="#pricing-table">PricingTable</a></li>
        <li><a class="has-text-link" href="#services-section">ServicesSection</a></li>
        <li><a class="has-text-link" href="#sidebar">Sidebar</a></li>
        <li><a class="has-text-link" href="#stat-widget">StatWidget</a></li>
        <li><a class="has-text-link" href="#theme-toggle-provider">ThemeToggleProvider</a></li>
        <li><a class="has-text-link" href="#widget">Widget</a></li>
      </ul>
    </div>

    <hr>

    <!-- Animation Component -->
    <section class="section" id="animation">
      <h2 class="title is-4 has-text-grey-dark">Animation</h2>
      <p class="has-text-grey-dark">
        The <code>Animation</code> component provides a variety of animation effects for your UI elements, such as fading, sliding, and zooming.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<Animation type="fade" duration={500}> <YourComponent /> </Animation>`}</code></pre>
    </section>

    <hr>

    <!-- CalendarWidget Component -->
    <section class="section" id="calendar-widget">
      <h2 class="title is-4 has-text-grey-dark">CalendarWidget</h2>
      <p class="has-text-grey-dark">
        The <code>CalendarWidget</code> is a fully customizable calendar component, perfect for displaying dates and managing events.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<CalendarWidget initialDate={new Date()} onDateSelect={handleDateSelect} />`}</code></pre>
    </section>

    <hr>

    <!-- ContactForm Component -->
    <section class="section" id="contact-form">
      <h2 class="title is-4 has-text-grey-dark">ContactForm</h2>
      <p class="has-text-grey-dark">
        The <code>ContactForm</code> component is designed to capture user inquiries efficiently. It’s highly customizable to suit different requirements.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<ContactForm onSubmit={handleSubmit} />`}</code></pre>
    </section>

    <hr>

    <!-- EventCalendar Component -->
    <section class="section" id="event-calendar">
      <h2 class="title is-4 has-text-grey-dark">EventCalendar</h2>
      <p class="has-text-grey-dark">
        The <code>EventCalendar</code> component is tailored for displaying events on a calendar, with options for different views and filters.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<EventCalendar events={eventList} onEventClick={handleEventClick} />`}</code></pre>
    </section>

    <hr>

    <!-- FAQSection Component -->
    <section class="section" id="faq-section">
      <h2 class="title is-4 has-text-grey-dark">FAQSection</h2>
      <p class="has-text-grey-dark">
        The <code>FAQSection</code> component helps organize frequently asked questions into an easy-to-navigate format.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<FAQSection questions={faqList} />`}</code></pre>
    </section>

    <hr>

    <!-- Features Component -->
    <section class="section" id="features">
      <h2 class="title is-4 has-text-grey-dark">Features</h2>
      <p class="has-text-grey-dark">
        The <code>Features</code> component is used to showcase a list of features, benefits, or services in a visually appealing manner.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<Features items={featuresList} />`}</code></pre>
    </section>

    <hr>

    <!-- GetQuoteSection Component -->
    <section class="section" id="get-quote-section">
      <h2 class="title is-4 has-text-grey-dark">GetQuoteSection</h2>
      <p class="has-text-grey-dark">
        The <code>GetQuoteSection</code> component is designed to prompt users to request a quote, featuring a form and call-to-action.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<GetQuoteSection onSubmit={handleQuoteRequest} />`}</code></pre>
    </section>

    <hr>

    <!-- HeroSection Component -->
    <section class="section" id="hero-section">
      <h2 class="title is-4 has-text-grey-dark">HeroSection</h2>
      <p class="has-text-grey-dark">
        The <code>HeroSection</code> component creates a large, impactful banner at the top of your webpage, ideal for showcasing a key message or image.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<HeroSection title="Welcome to Our Site" subtitle="Your success starts here." />`}</code></pre>
    </section>

    <hr>

    <!-- NewsletterSignup Component -->
    <section class="section" id="newsletter-signup">
      <h2 class="title is-4 has-text-grey-dark">NewsletterSignup</h2>
      <p class="has-text-grey-dark">
        The <code>NewsletterSignup</code> component provides a simple form to collect email addresses for your newsletter or mailing list.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<NewsletterSignup onSubmit={handleNewsletterSignup} />`}</code></pre>
    </section>

    <hr>

    <!-- NotFound Component -->
    <section class="section" id="not-found">
      <h2 class="title is-4 has-text-grey-dark">NotFound</h2>
      <p class="has-text-grey-dark">
        The <code>NotFound</code> component displays a custom 404 error message when a user navigates to a non-existent page.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<NotFound message="Oops! Page not found." />`}</code></pre>
    </section>

    <hr>

    <!-- Pricing Component -->
    <section class="section" id="pricing">
      <h2 class="title is-4 has-text-grey-dark">Pricing</h2>
      <p class="has-text-grey-dark">
        The <code>Pricing</code> component displays multiple pricing plans or options in a structured format.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<Pricing plans={pricingPlans} />`}</code></pre>
    </section>

    <hr>

    <!-- PricingCard Component -->
    <section class="section" id="pricing-card">
      <h2 class="title is-4 has-text-grey-dark">PricingCard</h2>
      <p class="has-text-grey-dark">
        The <code>PricingCard</code> component displays a single pricing option with details and a call-to-action.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<PricingCard title="Basic Plan" price="$19/month" features={basicFeatures} />`}</code></pre>
    </section>

    <hr>

    <!-- PricingTable Component -->
    <section class="section" id="pricing-table">
      <h2 class="title is-4 has-text-grey-dark">PricingTable</h2>
      <p class="has-text-grey-dark">
        The <code>PricingTable</code> component is used to compare multiple pricing options side by side.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<PricingTable plans={pricingPlans} />`}</code></pre>
    </section>

    <hr>

    <!-- ServicesSection Component -->
    <section class="section" id="services-section">
      <h2 class="title is-4 has-text-grey-dark">ServicesSection</h2>
      <p class="has-text-grey-dark">
        The <code>ServicesSection</code> component highlights the different services offered, often with icons and descriptions.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<ServicesSection services={serviceList} />`}</code></pre>
    </section>

    <hr>

    <!-- Sidebar Component -->
    <section class="section" id="sidebar">
      <h2 class="title is-4 has-text-grey-dark">Sidebar</h2>
      <p class="has-text-grey-dark">
        The <code>Sidebar</code> component provides a collapsible or fixed navigation panel, ideal for site navigation and additional links.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<Sidebar links={sidebarLinks} />`}</code></pre>
    </section>

    <hr>

    <!-- StatWidget Component -->
    <section class="section" id="stat-widget">
      <h2 class="title is-4 has-text-grey-dark">StatWidget</h2>
      <p class="has-text-grey-dark">
        The <code>StatWidget</code> component displays various statistics or metrics in a visually appealing format.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<StatWidget title="Total Users" value={1000} />`}</code></pre>
    </section>

    <hr>

    <!-- ThemeToggleProvider Component -->
    <section class="section" id="theme-toggle-provider">
      <h2 class="title is-4 has-text-grey-dark">ThemeToggleProvider</h2>
      <p class="has-text-grey-dark">
        The <code>ThemeToggleProvider</code> component allows users to switch between light and dark themes.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<ThemeToggleProvider> <YourApp /> </ThemeToggleProvider>`}</code></pre>
    </section>

    <hr>

    <!-- Widget Component -->
    <section class="section" id="widget">
      <h2 class="title is-4 has-text-grey-dark">Widget</h2>
      <p class="has-text-grey-dark">
        The <code>Widget</code> component is a flexible component that can be used for displaying various types of content.
      </p>
      <p><strong>Example Usage:</strong></p>
      <pre class="box"><code class="has-text-primary">{`<Widget content={<YourContent />} />`}</code></pre>
    </section>
  </div>
</section>