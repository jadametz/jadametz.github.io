# jesseadametz.com

My personal website built with Jekyll and hosted on GitHub Pages.

🌐 **Live Site**: https://www.jesseadametz.com

## About This Site

A minimal, modern personal website focused on professional credibility, thought leadership, and personal brand. Built with:

- **Jekyll 4.x** - Static site generator
- **GitHub Pages** - Zero-config hosting and deployment
- **SASS** - Clean, maintainable stylesheets
- **Formspree** - Contact form handling

## Local Development

### Prerequisites

- Ruby 3.x
- Bundler
- Xcode Command Line Tools (macOS): `xcode-select --install`

### Setup

1. Clone the repository:
```bash
git clone https://github.com/jadametz/jadametz.github.io.git
cd jadametz.github.io
```

2. Install dependencies:
```bash
bundle install
```

3. Run Jekyll locally:
```bash
bundle exec jekyll serve --livereload
```

4. View the site at http://localhost:4000

The site will automatically rebuild when you make changes to files.

## Writing Blog Posts

Create a new file in `_posts/` with the format `YYYY-MM-DD-title.md`:

```markdown
---
layout: post
title: "Your Post Title"
date: 2025-01-15
---

Your content here in Markdown format...
```

The post will automatically appear on the homepage and in the /writing archive.

## Deployment

### GitHub Pages (Automatic)

Any push to the `master` branch automatically triggers a build and deployment to https://www.jesseadametz.com

No additional configuration needed—GitHub Pages handles everything.

### Before First Deployment

1. **Set up Formspree** (for contact form):
   - Sign up at https://formspree.io
   - Create a new form
   - Copy your form ID
   - Update `contact/index.md` with your form ID (replace `YOUR_FORM_ID`)

2. **Verify CNAME** (already configured):
   - The `CNAME` file contains `www.jesseadametz.com`
   - DNS is already pointed to GitHub Pages

3. **Enable GitHub Pages**:
   - Go to repository Settings → Pages
   - Source: Deploy from branch `master`
   - Custom domain: `www.jesseadametz.com`

## Site Structure

```
/                   → Homepage
/about              → About page
/writing            → Blog archive
/writing/YYYY/MM/DD/title → Individual posts
/contact            → Contact form
```

## Updating Content

- **Homepage**: Edit `index.md`
- **About page**: Edit `about/index.md`
- **Contact page**: Edit `contact/index.md`
- **Styles**: Edit SASS files in `_sass/`
- **Navigation**: Edit `_includes/header.html`
- **Footer**: Edit `_includes/footer.html`

## Project Documentation

See `CLAUDE.md` for detailed development guidance including architecture, commands, and file structure.

## License

Content © Jesse Adametz. Site design based on minimal principles with custom implementation.
