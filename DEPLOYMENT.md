# Deployment Checklist

This document outlines the steps needed to deploy your refreshed website to GitHub Pages.

## Pre-Deployment Checklist

### 1. Set Up Formspree Contact Form

- [ ] Sign up for a free account at https://formspree.io
- [ ] Create a new form
- [ ] Copy your form ID (looks like `xoqgwxyz`)
- [ ] Update `contact/index.md` and replace `YOUR_FORM_ID` with your actual form ID
- [ ] Test the form locally to ensure it works

### 2. Review Content

- [ ] Review homepage content in `index.md` - update if needed
- [ ] Review About page in `about/index.md` - verify all information is current
- [ ] Update professional headshot at `images/avatar.jpg` (if you want to add one)
- [ ] Verify social media links in `_config.yml` are correct
- [ ] Remove or update old blog posts in `_posts/` as desired

### 3. Test Locally

- [ ] Run `bundle exec jekyll serve --livereload`
- [ ] Visit http://localhost:4000
- [ ] Test all navigation links
- [ ] Test responsive design on mobile (resize browser)
- [ ] Verify all pages render correctly
- [ ] Check console for any errors
- [ ] Test contact form (will redirect to Formspree)

### 4. Configure GitHub Pages

- [ ] Go to repository Settings → Pages
- [ ] Under "Source", select "Deploy from a branch"
- [ ] Select branch: `master` (or `main`)
- [ ] Select folder: `/ (root)`
- [ ] Click Save
- [ ] Under "Custom domain", enter: `www.jesseadametz.com`
- [ ] Check "Enforce HTTPS"

### 5. Verify DNS Configuration

Your DNS should already be configured, but verify:

- [ ] CNAME record: `www` → `jadametz.github.io`
- [ ] A records (for apex domain):
  - `185.199.108.153`
  - `185.199.109.153`
  - `185.199.110.153`
  - `185.199.111.153`

### 6. Deploy

- [ ] Commit all changes: `git add .`
- [ ] Create commit: `git commit -m "Initial site refresh - 2025 update"`
- [ ] Push to GitHub: `git push origin 2025-update`
- [ ] Create a pull request from `2025-update` to `master`
- [ ] Review the changes
- [ ] Merge the pull request

### 7. Post-Deployment Verification

- [ ] Wait 2-5 minutes for GitHub Pages to build
- [ ] Visit https://www.jesseadametz.com
- [ ] Verify all pages load correctly
- [ ] Test navigation
- [ ] Submit a test contact form
- [ ] Check email for Formspree notification
- [ ] Verify SEO meta tags (view page source)
- [ ] Test on mobile device
- [ ] Check accessibility with browser tools

### 8. Transition from Squarespace

- [ ] Verify new site is fully functional
- [ ] Update any external links pointing to old site
- [ ] Cancel Squarespace subscription (optional - can keep as backup)
- [ ] Update social media bios with new site link
- [ ] Monitor site for first 24 hours

## Common Issues

### Site Not Building
- Check repository Settings → Pages for build status
- View build logs by clicking on the latest commit
- Verify `_config.yml` syntax is valid YAML

### Custom Domain Not Working
- Verify CNAME file exists with `www.jesseadametz.com`
- Check DNS propagation: https://dnschecker.org
- Wait up to 24 hours for DNS changes

### Contact Form Not Working
- Verify Formspree form ID is correct
- Check for typos in the form action URL
- Ensure form fields have correct `name` attributes

### Styles Not Loading
- Check browser console for 404 errors
- Verify `assets/css/main.scss` has front matter (--- lines)
- Clear browser cache and hard refresh

## Rollback Plan

If you need to revert to the old site:

1. Revert the merge commit on `master` branch
2. Push to GitHub: `git push origin master`
3. GitHub Pages will automatically rebuild with old content
4. Or: Point DNS back to Squarespace temporarily

## Ongoing Maintenance

### Writing New Posts

1. Create `_posts/YYYY-MM-DD-title.md`
2. Add front matter and content
3. Test locally
4. Commit and push to `master`

### Updating Content

1. Edit the relevant `.md` file
2. Test locally with `bundle exec jekyll serve`
3. Commit and push changes

### Monitoring

- Monitor Google Analytics (if added later)
- Check Formspree dashboard for form submissions
- Review GitHub Pages build status occasionally

## Support Resources

- **Jekyll Documentation**: https://jekyllrb.com/docs/
- **GitHub Pages**: https://docs.github.com/en/pages
- **Formspree**: https://help.formspree.io/
- **SASS**: https://sass-lang.com/documentation
