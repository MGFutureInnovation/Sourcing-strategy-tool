# QUICK START - GitHub Deployment

## 3 Steps to Deploy on GitHub Pages

### Step 1: Create GitHub Repository (2 minutes)

1. Go to https://github.com/new
2. Repository name: `sourcing-strategy-tool` (or your choice)
3. Visibility: **Public** (required for free GitHub Pages)
4. **Don't** check "Initialize with README"
5. Click "Create repository"

### Step 2: Upload Files (2 methods)

#### Method A: Automatic (Recommended)
**On Mac/Linux:**
```bash
cd /path/to/sourcing-strategy-tool
./setup.sh
```

**On Windows:**
```
Double-click setup.bat
```

Follow the prompts - it will push everything to GitHub automatically.

#### Method B: Manual Upload
1. On GitHub repository page, click "uploading an existing file"
2. Drag ALL files from this folder
3. Commit message: "Initial commit: v1.1"
4. Click "Commit changes"

### Step 3: Enable GitHub Pages (1 minute)

1. Go to repository **Settings** → **Pages** (left sidebar)
2. Under "Source":
   - Branch: **main**
   - Folder: **/ (root)**
3. Click **Save**
4. Wait 1-2 minutes

**Your tool is now live!**
URL: `https://YOUR-USERNAME.github.io/sourcing-strategy-tool/`

---

## That's It!

### What You Get:
✅ Live tool accessible via web link
✅ Version control (rollback, history, branches)
✅ Easy updates (just push to GitHub)
✅ Free hosting forever

### Next Steps:
1. Test the tool at your GitHub Pages URL
2. Share URL with team
3. See `docs/deployment-guide.md` for advanced features

### To Update Later:
```bash
# Make changes to index.html
git add index.html
git commit -m "Update: describe your change"
git push origin main
# Live in 1-2 minutes
```

---

## Troubleshooting

**"404 Not Found"?**
- Wait 2-5 minutes for first deployment
- Check Pages is enabled in Settings
- Verify repository is Public

**Can't push?**
- Use Personal Access Token (not password)
- GitHub → Settings → Developer settings → Personal access tokens
- Generate token with "repo" permissions
- Use token as password when pushing

**Need help?**
See `docs/deployment-guide.md` for detailed troubleshooting.

---

**Questions?** Contact Josh Standen / Innovation Team
