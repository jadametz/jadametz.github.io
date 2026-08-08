# jesseadametz.com

Personal website of Jesse Adametz — platform engineering leader and advisor.
Static, no build step. Hosted on GitHub Pages, served at
[jesseadametz.com](https://jesseadametz.com).

## Structure

- `index.html` — the whole site (hero, about, speaking, footer)
- `style.css` — hand-authored styles; light/dark aware
- `.nojekyll` — disables GitHub's default Jekyll build
- `CNAME` — custom domain (`jesseadametz.com`)
- `images/`, `favicon.ico`, `apple-touch-icon-precomposed.png` — assets

## Preview locally

```sh
python3 -m http.server
# then open http://localhost:8000
```

## Deploy

Push to `master`. GitHub Pages serves the repo root.

DNS lives at Hover: apex `A`/`AAAA` records point at GitHub Pages, and
`www` `CNAME`s to `jadametz.github.io`.
