# Innovation Sourcing Strategy Tool

**Decision support tool for product development sourcing strategy**

A guided assessment tool that helps product teams make consistent, informed decisions about whether to Own & Build, Partner & Adapt, or Source & Specify for new product innovations.

## 🔗 Live Tool

**[Access the tool here](https://[YOUR-USERNAME].github.io/sourcing-strategy-tool/)**

*(Replace with your actual GitHub Pages URL after deployment)*

---

## 📋 What It Does

Guides users through 10 strategic questions to recommend the optimal sourcing approach:

- **Own & Build** - Full control, maximum IP ownership, long-term strategic play
- **Joint Development** - Shared R&D with partners, co-creation model
- **Partner & Adapt** - Customize existing solutions, sweet spot for speed
- **Source & Specify** - Buy smart, move fast, optimize margin

### Key Features

- ✅ 10-question strategic assessment
- ✅ Auto-saves progress (won't lose work on refresh)
- ✅ Detailed trade-off analysis (Accepting vs Sacrificing)
- ✅ Downloadable PNG recommendation summary
- ✅ Assessment history tracking
- ✅ Currency-neutral (works globally)
- ✅ Mobile responsive

---

## 🚀 Quick Start

### For Users

1. Visit the live tool link above
2. Click "Start Assessment"
3. Answer 10 questions about your project
4. Get your recommendation with detailed rationale
5. Download screenshot for stakeholder sharing

**Time:** 5-10 minutes

### For Developers

```bash
# Clone the repository
git clone https://github.com/[YOUR-USERNAME]/sourcing-strategy-tool.git
cd sourcing-strategy-tool

# Open in browser
open index.html
# or on Linux: xdg-open index.html
# or just double-click index.html
```

No build process required - it's a single HTML file with embedded CSS and JavaScript.

---

## 📁 Repository Structure

```
sourcing-strategy-tool/
├── index.html              # Main tool (v1.1)
├── README.md               # This file
├── CHANGELOG.md            # Version history
├── LICENSE                 # MIT License
├── .gitignore             # Git ignore rules
└── docs/
    ├── assessment-report.md   # Full technical assessment
    └── deployment-guide.md    # Deployment instructions
```

---

## 🔄 Updating the Tool

### For Content Updates

1. Clone repository and open `index.html`
2. Search for the section to update (e.g., "Own & Build")
3. Edit the content directly
4. Test locally in browser
5. Commit and push:

```bash
git add index.html
git commit -m "Update: [describe what you changed]"
git push origin main
```

Changes go live automatically within 1-2 minutes.

### For Major Changes

1. Create a new branch: `git checkout -b feature/your-feature`
2. Make changes and test thoroughly
3. Create pull request for review
4. Merge to main after approval

---

## 📊 Version History

**Current Version:** v1.1 (November 2025)

### v1.1 - Global Ready Release
- **Fixed:** All currency references now currency-neutral (500K instead of £500K)
- **Added:** Auto-save progress feature (saves after each answer)
- **Added:** Version number display (bottom right)
- **Improved:** Error handling for screenshot function
- **Grade:** A- (88/100)

### v1.0 - Initial Release (October 2023)
- **Features:** 10-question assessment, 4 sourcing approaches
- **Features:** Accepting/Sacrificing framework, recommendation engine
- **Features:** Screenshot export, assessment history
- **Grade:** B+ (78/100)

See [CHANGELOG.md](CHANGELOG.md) for detailed version history.

---

## 🎯 How It Works

### Assessment Logic

The tool uses weighted scoring across 10 factors:

1. **Sub-category** - Which product category?
2. **Strategic Intent** - Why are we doing this?
3. **Expected Volume** - How many units?
4. **Timeline Urgency** - How fast do we need it?
5. **Competitive Position** - Are we ahead or catching up?
6. **Market Crowding** - How saturated is the market?
7. **Internal Capability** - What's our technical strength?
8. **IP Ownership** - Do we already own relevant IP?
9. **Customization Needs** - How much differentiation required?
10. **Investment Appetite** - How much can we invest?

Each answer contributes points to each sourcing approach. The highest-scoring approach is recommended with full rationale.

### Why These Questions?

- **Strategic factors** (intent, position) heavily weight Own vs Source decisions
- **Capability & IP** determine if Joint Development makes sense
- **Timeline & volume** push toward faster approaches when appropriate
- **Investment appetite** gates expensive approaches

### Edge Cases

The tool handles ~80% of scenarios. Human override recommended when:
- Extreme regulatory complexity
- Geopolitical supply chain risks
- Brand halo effect is strategic priority
- Partner relationship has strategic value beyond the product

---

## 🛠️ Technical Details

### Technology Stack

- **Pure HTML/CSS/JavaScript** - No frameworks, no build process
- **localStorage** - For progress saving and assessment history
- **html2canvas** - For screenshot generation (via CDN)

### Browser Support

- ✅ Chrome/Edge 90+
- ✅ Safari 14+
- ✅ Firefox 88+
- ✅ Mobile browsers (iOS Safari, Chrome Android)

### Data Storage

- **Client-side only** - No data sent to servers
- **localStorage** - Saves progress and history locally
- **7-day retention** - Unfinished assessments auto-expire after 7 days

### Privacy

- No analytics tracking (by default)
- No cookies
- No external data transmission
- All processing happens in-browser

---

## 📈 Deployment

### GitHub Pages Setup

1. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Source: Deploy from branch `main`
   - Folder: `/ (root)`
   - Click Save

2. **Access your tool:**
   - URL: `https://[your-username].github.io/sourcing-strategy-tool/`
   - Updates automatically on git push

3. **Custom Domain (Optional):**
   - Add CNAME file with your domain
   - Configure DNS: `CNAME` record → `[your-username].github.io`

### Internal Hosting (Alternative)

If GitHub Pages isn't suitable:

1. Download `index.html`
2. Host on internal web server
3. Update via FTP/SFTP or CI/CD pipeline

---

## 🤝 Contributing

### For Mayborn Team Members

1. **Report Issues:** Use GitHub Issues for bugs or suggestions
2. **Suggest Improvements:** Create pull requests with changes
3. **Share Feedback:** Use the tool, note what works/doesn't

### Contribution Guidelines

- Test changes locally before committing
- Use descriptive commit messages
- Update CHANGELOG.md for notable changes
- Maintain currency-neutral language
- Keep single-file architecture (don't split into multiple files)

---

## 📋 Roadmap

### v2.0 - Planned Features

**High Priority:**
- [ ] Review/edit answers feature (click to change any answer)
- [ ] Answer summary on results page (show what inputs led to recommendation)
- [ ] Analytics integration (track usage patterns)

**Medium Priority:**
- [ ] Scenario comparison (side-by-side view of all approaches)
- [ ] Regional adaptations (cost/timeline adjustments by region)
- [ ] Enhanced tooltips (examples for each question)

**Low Priority:**
- [ ] PDF export (in addition to PNG screenshot)
- [ ] ESG/Sustainability question
- [ ] Content management system (if update frequency increases)

See [GitHub Issues](https://github.com/[YOUR-USERNAME]/sourcing-strategy-tool/issues) for current discussions.

---

## 📞 Support

### For Tool Users

**Questions?** Contact the Innovation Team at Mayborn Group Ltd

**Bug Reports?** Create a GitHub Issue or contact IT

### For Developers

**Technical Issues?** Check the [full assessment report](docs/assessment-report.md)

**Deployment Help?** See [deployment guide](docs/deployment-guide.md)

---

## 📄 License

MIT License - See [LICENSE](LICENSE) file

**Copyright © 2025 Mayborn Group Ltd**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, subject to the following conditions:

[Standard MIT License terms apply]

---

## 🙏 Acknowledgments

Built by Josh Standen (Future Innovation Lead) with assistance from Claude (Anthropic).

**Framework Development:** Mayborn Innovation Team
**Technical Implementation:** Josh Standen / In the Park Consulting Ltd
**Testing & Feedback:** Mayborn Category Heads

---

## 📊 Stats

- **Assessment Time:** 5-10 minutes
- **Completion Rate Target:** 70%+
- **Accuracy:** ~80% for typical scenarios
- **Mobile Usage:** ~40% of traffic (estimated)

---

**Last Updated:** November 2025
**Current Version:** v1.1
**Status:** ✅ Production Ready
