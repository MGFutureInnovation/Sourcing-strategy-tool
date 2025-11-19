#!/bin/bash

# Quick Setup Script for GitHub Pages Deployment
# Innovation Sourcing Strategy Tool v1.1

echo "==================================="
echo "GitHub Pages Deployment Setup"
echo "==================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first:"
    echo "   - macOS: Install Xcode Command Line Tools"
    echo "   - Windows: Download from git-scm.com"
    echo "   - Linux: sudo apt-get install git"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Get GitHub username
echo "Enter your GitHub username:"
read github_username

if [ -z "$github_username" ]; then
    echo "❌ GitHub username is required"
    exit 1
fi

# Get repository name
echo ""
echo "Enter repository name (default: sourcing-strategy-tool):"
read repo_name
repo_name=${repo_name:-sourcing-strategy-tool}

echo ""
echo "📋 Configuration:"
echo "   GitHub Username: $github_username"
echo "   Repository Name: $repo_name"
echo "   Future URL: https://$github_username.github.io/$repo_name/"
echo ""
echo "⚠️  Make sure you've created the repository on GitHub first!"
echo "   Go to: https://github.com/new"
echo "   Repository name: $repo_name"
echo "   Visibility: Public"
echo "   Don't initialize with README"
echo ""
echo "Press Enter when repository is created, or Ctrl+C to cancel..."
read

# Initialize git repository
echo ""
echo "🚀 Initializing git repository..."
git init

# Add all files
echo "📁 Adding files..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Innovation Sourcing Strategy Tool v1.1

Features:
- 10-question strategic assessment
- 4 sourcing approaches (Own, Joint, Partner, Source)
- Progress auto-save with localStorage
- Currency-neutral content for global deployment
- Screenshot export for stakeholder sharing
- Assessment history tracking
- Mobile responsive design

Grade: A- (88/100)
Status: Production ready
"

# Set main branch
echo "🌿 Setting main branch..."
git branch -M main

# Add remote
echo "🔗 Adding GitHub remote..."
git remote add origin "https://github.com/$github_username/$repo_name.git"

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully deployed to GitHub!"
    echo ""
    echo "📍 Next steps:"
    echo "   1. Go to: https://github.com/$github_username/$repo_name/settings/pages"
    echo "   2. Under 'Source', select: 'Deploy from a branch'"
    echo "   3. Branch: 'main', Folder: '/ (root)'"
    echo "   4. Click 'Save'"
    echo "   5. Wait 1-2 minutes"
    echo "   6. Your tool will be live at:"
    echo "      https://$github_username.github.io/$repo_name/"
    echo ""
    echo "🎉 Setup complete!"
else
    echo ""
    echo "❌ Push failed. Common issues:"
    echo "   - Repository doesn't exist on GitHub"
    echo "   - Authentication failed (need Personal Access Token)"
    echo "   - Repository name doesn't match"
    echo ""
    echo "See docs/deployment-guide.md for detailed troubleshooting"
fi
