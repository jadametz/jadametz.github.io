---
layout: default
title: Home
---

<div class="hero">
  <h1>Jesse Adametz</h1>
  <p class="subtitle">Director of Engineering, Twilio Segment</p>
  <p class="tagline">Engineering leader focused on building resilient data infrastructure and high-performing teams</p>

  <div class="cta-buttons">
    <a href="{{ '/writing' | relative_url }}" class="btn btn-primary">Read my writing</a>
    <a href="{{ '/contact' | relative_url }}" class="btn btn-secondary">Get in touch</a>
  </div>
</div>

<div class="section">
  <h2>About Me</h2>
  <p>I lead engineering teams building developer platforms at scale. My focus is on data infrastructure, reliability engineering, and creating environments where engineers thrive.</p>
  <p>Currently at Twilio Segment, I design organizational structures, build platforms emphasizing developer experience, and grow teams of talented people who ship reliable, scalable products.</p>
  <p><a href="{{ '/about' | relative_url }}">Learn more about my background &rarr;</a></p>
</div>

<div class="section">
  <h2>Recent Writing</h2>
  {% assign recent_posts = site.posts | limit: 3 %}
  {% if recent_posts.size > 0 %}
    <ul class="post-list">
      {% for post in recent_posts %}
        <li class="post-item">
          <h3 class="post-title"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
          <p class="post-date">{{ post.date | date: "%B %-d, %Y" }}</p>
          {% if post.excerpt %}
            <p class="post-excerpt">{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
          {% endif %}
        </li>
      {% endfor %}
    </ul>
    <p><a href="{{ '/writing' | relative_url }}">View all posts &rarr;</a></p>
  {% else %}
    <div class="empty-state">
      <p>No posts yet. Check back soon for thoughts on engineering leadership, platform development, and building great teams.</p>
    </div>
  {% endif %}
</div>
