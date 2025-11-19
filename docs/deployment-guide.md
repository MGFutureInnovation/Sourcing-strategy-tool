# Deployment Guide - GitHub Pages

Complete guide to deploying the Innovation Sourcing Strategy Tool on GitHub Pages.

---

## Quick Start (5 Minutes)

### Prerequisites
- GitHub account
- Git installed on your computer
- The tool repository files

### Steps

1. **Create Repository on GitHub**
   ```
   - Go to github.com
   - Click "New repository"
   - Name: "sourcing-strategy-tool" (or your choice)
   - Visibility: Public (for GitHub Pages free hosting)
   - Initialize: No (we have files already)
   - Click "Create repository"
   ```

2. **Push Files to GitHub**
   ```bash
   cd /path/to/sourcing-strategy-tool
   
   git init
   git add .
   git commit -m "Initial commit: v1.1 of sourcing strategy tool"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/sourcing-strategy-tool.git
   git push -u origin main
   ```

3. **Enable GitHub Pages**
   ```
   - Go to repository Settings
   - Scroll to "Pages" section (left sidebar)
   - Source: "Deploy from a branch"
   - Branch: "main"
   - Folder: "/ (root)"
   - Click "Save"
   ```

4. **Access Your Tool**
   - URL: `https://YOUR-USERNAME.github.io/sourcing-strategy-tool/`
   - Wait 1-2 minutes for first deployment
   - Share this URL with your team

**Done!** 🎉

---

## Detailed Setup

### Option 1: GitHub Web Interface (No Command Line)

If you prefer not to use Git command line:

1. **Create Repository**
   - Go to github.com and click "New repository"
   - Repository name: `sourcing-strategy-tool`
   - Description: "Innovation sourcing strategy decision tool"
   - Public repository
   - Don't initialize with README (we have one)

2. **Upload Files**
   - Click "uploading an existing file"
   - Drag all files from the repository folder
   - Commit message: "Initial commit: v1.1"
   - Click "Commit changes"

3. **Enable Pages** (same as Quick Start step 3)

4. **Verify Deployment**
   - Go to Settings → Pages
   - You'll see: "Your site is live at https://..."
   - Click the URL to test

### Option 2: GitHub Desktop (Easy GUI)

If you want Git version control but prefer a GUI:

1. **Install GitHub Desktop**
   - Download from desktop.github.com
   - Sign in with GitHub account

2. **Create Repository**
   - File → New Repository
   - Name: sourcing-strategy-tool
   - Local Path: Choose where files are
   - Create Repository

3. **Initial Commit**
   - All files should show in "Changes"
   - Commit message: "Initial commit: v1.1"
   - Click "Commit to main"

4. **Publish**
   - Click "Publish repository"
   - Keep "Public" selected (for free GitHub Pages)
   - Uncheck "Keep this code private"
   - Click "Publish repository"

5. **Enable Pages** (same as Quick Start step 3)

### Option 3: Command Line (Full Control)

For developers comfortable with Git:

```bash
# Navigate to repository folder
cd /path/to/sourcing-strategy-tool

# Initialize Git repository
git init

# Add all files
git add .

# First commit
git commit -m "Initial commit: v1.1 of sourcing strategy tool

Features:
- 10-question assessment
- 4 sourcing approaches
- Progress auto-save
- Screenshot export
- Assessment history
- Currency-neutral content
"

# Set main branch
git branch -M main

# Add remote (replace YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/sourcing-strategy-tool.git

# Push to GitHub
git push -u origin main
```

Then enable Pages in Settings as described above.

---

## Updating the Tool

### Quick Update (Content Changes)

When you need to update content or fix bugs:

```bash
# 1. Make your changes to index.html

# 2. Test locally
open index.html  # or just double-click the file

# 3. Commit and push
git add index.html
git commit -m "Update: [describe your change]"
git push origin main

# Changes live in 1-2 minutes
```

### Example Update Scenarios

**Scenario 1: Update Cost Estimate**
```bash
# Edit index.html - change cost range
git add index.html
git commit -m "Update: Adjusted Own & Build investment range to 600K-2.5M"
git push origin main
```

**Scenario 2: Fix Typo**
```bash
git add index.html
git commit -m "Fix: Typo in Partner & Adapt section"
git push origin main
```

**Scenario 3: Add Warning**
```bash
git add index.html
git commit -m "Add: Supply chain warning for Source & Specify"
git push origin main
```

### Testing Before Deployment

**Best Practice:** Test major changes locally first

```bash
# Create a test branch
git checkout -b test/my-changes

# Make changes
# Edit index.html

# Test locally
open index.html

# If good, merge to main
git checkout main
git merge test/my-changes
git push origin main

# Clean up test branch
git branch -d test/my-changes
```

---

## Custom Domain (Optional)

### Setting Up Your Own Domain

If you want `tool.yourcompany.com` instead of `username.github.io/tool`:

1. **Buy Domain** (if you don't have one)
   - Namecheap, Google Domains, etc.
   - Or use existing company domain

2. **Add CNAME File to Repository**
   ```bash
   echo "tool.yourcompany.com" > CNAME
   git add CNAME
   git commit -m "Add custom domain"
   git push origin main
   ```

3. **Configure DNS**
   - Go to your domain registrar's DNS settings
   - Add CNAME record:
     - Name: `tool` (or `@` for root domain)
     - Value: `YOUR-USERNAME.github.io`
     - TTL: 3600 (or automatic)

4. **Enable HTTPS in GitHub**
   - Settings → Pages
   - Wait for DNS propagation (5-60 minutes)
   - Check "Enforce HTTPS"

5. **Verify**
   - Visit https://tool.yourcompany.com
   - Should work within an hour

### Subdomain Examples

- `innovation-tool.mayborngroup.com`
- `sourcing.tommeetippee.com`
- `strategy-tool.yourcompany.com`

---

## Troubleshooting

### Problem: "404 - There isn't a GitHub Pages site here"

**Solutions:**
1. Check Pages is enabled: Settings → Pages
2. Verify branch is "main" and folder is "/ (root)"
3. Wait 2-5 minutes for initial deployment
4. Check repository is Public (Private requires GitHub Pro)

### Problem: "Changes not showing up"

**Solutions:**
1. Hard refresh browser: Ctrl+Shift+R (Windows) or Cmd+Shift+R (Mac)
2. Clear browser cache
3. Check git push was successful: `git status`
4. Wait 2-3 minutes for deployment
5. Check Actions tab for build errors

### Problem: "Cannot push to GitHub"

**Solutions:**
1. Verify remote: `git remote -v`
2. Check authentication: Use Personal Access Token (not password)
3. Set up SSH key (recommended for frequent use)

**Setting up Personal Access Token:**
```
1. GitHub → Settings → Developer settings
2. Personal access tokens → Tokens (classic)
3. Generate new token
4. Select: repo, workflow, write:packages
5. Generate and save token
6. Use token as password when pushing
```

### Problem: "Tool loads but features broken"

**Check:**
1. Browser console for JavaScript errors (F12)
2. localStorage availability (some browsers block in private mode)
3. CDN for html2canvas is accessible

---

## Security & Privacy

### Data Handling

**What's stored:**
- User answers: localStorage (client-side only)
- Assessment history: localStorage (client-side only)
- No server-side storage
- No cookies
- No analytics (unless you add them)

**Security Notes:**
- All processing client-side
- No data sent to external servers
- html2canvas CDN is HTTPS
- GitHub Pages serves over HTTPS by default

### Access Control

**Public Repository:**
- ✅ Anyone can view code
- ✅ Anyone can use the tool
- ❌ Not suitable for proprietary algorithms
- ✅ Good for company-wide deployment

**Private Repository:**
- ✅ Only team members see code
- ✅ GitHub Pages requires GitHub Pro ($4/mo)
- ✅ Can restrict access further
- ❌ More complex to manage

**Recommendation:** Public repo is fine unless scoring algorithm is confidential IP.

---

## Monitoring & Analytics

### Option 1: GitHub Traffic Stats

Built-in analytics at: Repository → Insights → Traffic

**Shows:**
- Page views
- Unique visitors
- Referring sites
- Popular content

**Limitations:**
- Last 14 days only
- Basic metrics only
- No user behavior tracking

### Option 2: Add Google Analytics

To track usage in detail:

1. **Get Google Analytics ID**
   - Create account at analytics.google.com
   - Get tracking ID (G-XXXXXXXXXX)

2. **Add to index.html** (in `<head>` section):
   ```html
   <!-- Google Analytics -->
   <script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
   <script>
     window.dataLayer = window.dataLayer || [];
     function gtag(){dataLayer.push(arguments);}
     gtag('js', new Date());
     gtag('config', 'G-XXXXXXXXXX');
   </script>
   ```

3. **Track Custom Events** (optional):
   ```javascript
   // Track when recommendation is shown
   gtag('event', 'recommendation_shown', {
     'approach': approach,
     'category': categoryText
   });
   
   // Track screenshot downloads
   gtag('event', 'screenshot_download', {
     'approach': approach
   });
   ```

4. **Commit and push**:
   ```bash
   git add index.html
   git commit -m "Add: Google Analytics tracking"
   git push origin main
   ```

**Privacy Note:** Inform users if you add analytics.

---

## Backup & Recovery

### Regular Backups

Git itself is a backup system, but also:

```bash
# Create tagged release
git tag -a v1.1.0 -m "Version 1.1.0 - Global ready release"
git push origin v1.1.0

# Download repository as ZIP
# GitHub → Code → Download ZIP
```

### Rollback to Previous Version

If an update breaks something:

```bash
# See recent commits
git log --oneline

# Rollback to specific commit
git revert <commit-hash>
git push origin main

# Or reset to previous state (destructive)
git reset --hard <commit-hash>
git push origin main --force
```

### Disaster Recovery

If repository is lost:

1. Download from GitHub (if still accessible)
2. Use local backup (recommended: weekly ZIP exports)
3. Recreate from original files + CHANGELOG

---

## Team Collaboration

### Multiple People Updating

**Workflow:**
1. Always pull before editing: `git pull origin main`
2. Make your changes
3. Commit and push
4. If conflict, Git will warn you

**Handling Conflicts:**
```bash
git pull origin main  # Gets error if conflict
# Edit conflicting files (Git marks conflicts with <<<< ====)
git add .
git commit -m "Resolve merge conflict"
git push origin main
```

### Branch Strategy (Recommended)

**For larger teams:**

```bash
# Development branch for testing
git checkout -b development
# Make changes
git push origin development

# When ready for production
git checkout main
git merge development
git push origin main
```

**Configure Pages to test from development:**
- Settings → Pages → Branch: development
- Test at development branch URL
- Merge to main when validated

---

## Cost

### GitHub Pages Hosting

**Free Tier:**
- ✅ Unlimited public repositories
- ✅ Unlimited bandwidth (soft limit: 100GB/month)
- ✅ Custom domain support
- ✅ HTTPS by default

**Paid (GitHub Pro: $4/month):**
- Private repository with Pages
- Advanced features (not needed for this tool)

**Recommendation:** Free tier is sufficient.

---

## Migration from Internal Server

If you're currently hosting internally:

**Before:**
- Internal web server (IIS, Apache, nginx)
- Manual FTP uploads
- No version control
- Single point of failure

**After (GitHub Pages):**
- Git version control
- Automatic deployments
- Rollback capability
- Distributed (GitHub's CDN)
- Free hosting

**Migration Steps:**
1. Set up GitHub repo (as above)
2. Deploy to GitHub Pages
3. Test thoroughly
4. Update internal links to new URL
5. Keep old server running for 1 week
6. Monitor traffic
7. Decommission old server

---

## Next Steps

### After Deployment

1. **Share URL** with stakeholders
2. **Test** on different devices/browsers
3. **Document** the URL in internal wiki
4. **Set up monitoring** (GitHub Traffic or Analytics)
5. **Schedule** 30-day review meeting
6. **Collect feedback** from users

### Recommended Follow-ups

**Week 1:**
- Monitor GitHub Traffic stats
- Check for user feedback/issues
- Verify tool works for all teams

**Week 2-4:**
- Gather user feedback
- Track completion rates
- Note any confusion points

**Day 30:**
- Review metrics
- Plan v1.2 or v2.0 improvements
- Update documentation

---

## Support

**GitHub Issues:**
- Report bugs: github.com/YOUR-USERNAME/sourcing-strategy-tool/issues
- Feature requests: Use "enhancement" label
- Questions: Use "question" label

**Internal Support:**
- Contact: [Your team contact]
- Documentation: See README.md
- Technical: See assessment-report.md in docs/

---

**Deployment Guide Version:** 1.0
**Last Updated:** November 2025
**Author:** Josh Standen / In the Park Consulting Ltd
