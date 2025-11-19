# Changelog

All notable changes to the Innovation Sourcing Strategy Tool will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.1.0] - 2025-11-19

### 🎯 Global Deployment Ready

Major improvements for global rollout across Mayborn Group.

### Added
- **Progress auto-save** - Tool now saves answers after each question to localStorage
- **Progress restore** - Offers to continue unfinished assessments (up to 7 days old)
- **Version display** - Shows "v1.1 | November 2025" in bottom right corner
- **Enhanced error handling** - Screenshot function has better error messages and fallback

### Changed
- **Currency neutralization** - Removed all £ symbols from content
  - Changed "£500K-£2M+" to "500K-2M+"
  - Changed "£50K-£200K" to "50K-200K"
  - Now works for all global markets without UK bias
- **Improved screenshot error handling** - Added blob validation and clearer error messages

### Fixed
- Progress loss on browser refresh
- Silent failure when screenshot generation fails
- Currency references in code comments

### Technical Details
- localStorage usage: ~5KB for typical saved progress
- 7-day expiry on saved progress to avoid clutter
- Auto-cleanup when assessment completes

**Assessment Grade:** A- (88/100)
**Deployment Status:** ✅ Production Ready

---

## [1.0.0] - 2023-10-25

### 🚀 Initial Release

First production version of the sourcing strategy tool.

### Added
- **10-question assessment** covering strategic, operational, and resource factors
- **Four sourcing approaches:**
  - Own & Build (maximum control, full ownership)
  - Joint Development (shared R&D with partners)
  - Partner & Adapt (customize existing solutions)
  - Source & Specify (buy smart, optimize margin)
- **Weighted scoring algorithm** based on strategic intent, capability, timeline, etc.
- **Accepting/Sacrificing framework** for honest trade-off analysis
- **Product Benefit statements** for each approach
- **Screenshot export** - Generate PNG summary for stakeholder sharing
- **Assessment history** - Local storage of all completed assessments
- **Admin view** - Review all past assessments, export to CSV
- **Challenge notes** - Add context to recommendations
- **Responsive design** - Works on desktop, tablet, and mobile
- **Progress indicator** - Visual progress bar through assessment
- **Hint text** - Guidance for each question
- **Smooth animations** - Professional UI transitions

### Core Features
- Single-file HTML architecture (easy deployment)
- Client-side processing (no backend required)
- localStorage for data persistence
- html2canvas for screenshot generation
- Modern gradient UI with purple theme

### Content
- Detailed recommendations with:
  - Rationale based on inputs
  - Timeline estimates
  - Investment ranges (in GBP - later fixed in v1.1)
  - Risk assessments
  - "Reconsider if..." guidance
  - Warnings and implications
- Partner & Adapt clarification section
- Strategic vs tactical differentiation

**Assessment Grade:** B+ (78/100)
**Known Issues:**
- Currency hardcoded in GBP (addressed in v1.1)
- No progress saving on refresh (addressed in v1.1)
- Screenshot fails silently on error (addressed in v1.1)
- No version number displayed (addressed in v1.1)

---

## [Unreleased] - Future Versions

### Planned for v2.0

#### High Priority
- [ ] **Review/edit answers** - Click any answer on results page to change it
- [ ] **Answer summary display** - Show which inputs led to recommendation
- [ ] **Analytics integration** - Track completion rate, common paths, confusion points
- [ ] **Improved Joint Development weighting** - Currently underweighted in algorithm

#### Medium Priority
- [ ] **Scenario comparison** - Side-by-side view of all four approaches
- [ ] **Regional cost variations** - Adjust estimates by market
- [ ] **Timeline adjustments** - Account for regulatory complexity by region
- [ ] **Enhanced tooltips** - Examples and definitions for each question
- [ ] **Examples library** - Real product cases (e.g., "TMD pump used Own & Build")

#### Low Priority
- [ ] **PDF export** - In addition to PNG screenshot
- [ ] **ESG/Sustainability question** - Environmental impact factor
- [ ] **Content management system** - Separate content from code
- [ ] **Multi-language support** - Internationalization
- [ ] **Accessibility improvements** - WCAG 2.1 AA compliance
- [ ] **Dark mode** - Optional dark theme

### Planned for v1.2 (Patch)
- [ ] Minor content updates based on first 30 days of usage
- [ ] Bug fixes from production usage
- [ ] Performance optimizations for mobile

---

## Version Numbering

This project uses [Semantic Versioning](https://semver.org/):

- **MAJOR** (x.0.0): Breaking changes, major redesign
- **MINOR** (1.x.0): New features, significant improvements
- **PATCH** (1.1.x): Bug fixes, minor content updates

---

## Upgrade Guide

### From v1.0 to v1.1

**No action required** - Simply replace the HTML file or pull latest from git.

**What you get:**
- Progress saving (automatic)
- Currency-neutral content (automatic)
- Better error handling (automatic)

**Breaking Changes:** None

**Data Migration:** Not needed - localStorage schema unchanged

---

## Release Notes

### v1.1.0 Release Notes

**Release Date:** November 19, 2025
**Release Type:** Minor version bump (new features)
**Status:** Stable

**Upgrade Priority:** High - Fixes critical global readiness issues

**Notable Changes:**
1. Currency neutralization enables global deployment
2. Progress saving prevents user frustration from lost work
3. Version tracking helps with support and updates
4. Better error handling reduces silent failures

**Testing:**
- ✅ Tested on Chrome 119, Safari 17, Firefox 120
- ✅ Tested on iOS Safari, Chrome Android
- ✅ Progress save/restore tested across browser restarts
- ✅ Screenshot function tested with error conditions
- ✅ All question flows tested

**Known Issues:**
- None critical
- Joint Development still underweighted (defer to v2.0)
- No scenario comparison yet (defer to v2.0)

**Deployment:**
- Suitable for global company-wide rollout
- Recommended: GitHub Pages for version control
- Alternative: Internal web server

---

**Maintained by:** Josh Standen / In the Park Consulting Ltd
**Contact:** [Your contact info]
**Repository:** https://github.com/[YOUR-USERNAME]/sourcing-strategy-tool
