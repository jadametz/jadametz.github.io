# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Jekyll-based personal website (jadametz.github.io) hosted on GitHub Pages at https://www.jesseadametz.com

## Architecture

- **Static Site Generator**: Jekyll 4.x with GitHub Pages support
- **Content Format**: Markdown files with YAML front matter
- **Styling**: SASS source files in `_sass/` compiled to `assets/css/main.css`
- **Blog Posts**: Markdown files in `_posts/` directory (format: `YYYY-MM-DD-title.md`)
- **Layouts**: Liquid templates in `_layouts/` directory
- **Deployment**: GitHub Pages builds and serves automatically from `master` branch

## Development Workflow

### Prerequisites

For local development, you need:
- Ruby 3.x
- Bundler (`gem install bundler`)
- Xcode Command Line Tools (macOS): `xcode-select --install`

### Local Development

1. Install dependencies:
```bash
bundle install
```

2. Run Jekyll locally:
```bash
bundle exec jekyll serve --livereload
```

The site will be available at `http://localhost:4000` with live reload enabled.

### Making Changes

**Content Pages**: Edit Markdown files (`.md`) in root or subdirectories
- `index.md` - Homepage
- `about/index.md` - About page
- `contact/index.md` - Contact page

**Blog Posts**: Create new files in `_posts/` with format:
```
_posts/YYYY-MM-DD-title.md
```

**Styles**: Edit SASS files in `_sass/` directory. Main entry point is `assets/css/main.scss`.

**Layouts**: Modify templates in `_layouts/` directory using Liquid syntax.

### Deployment

Changes pushed to the `master` branch are automatically built and deployed by GitHub Pages to https://www.jesseadametz.com

## Key Files

- `_config.yml` - Jekyll configuration (site title, URL, plugins, permalinks)
- `_layouts/default.html` - Base layout template (wraps all pages)
- `_layouts/page.html` - Template for static pages (About, Contact)
- `_layouts/post.html` - Template for blog posts
- `_includes/header.html` - Site header and navigation
- `_includes/footer.html` - Site footer and social links
- `Gemfile` - Ruby dependencies
- `CNAME` - Custom domain configuration for GitHub Pages

## Site Structure

```
/                   → Homepage (index.md)
/about              → About page
/writing            → Blog archive
/writing/YYYY/MM/DD/title → Individual blog posts
/contact            → Contact page (with Formspree form)
```

## Contact Form

The contact form uses [Formspree](https://formspree.io) for handling submissions on the static site. Form endpoint is configured in `contact/index.md`.
