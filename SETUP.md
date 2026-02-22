# Setup Guide for The Adventures of Starmonia

## ✅ What's Been Set Up

Your storybook site is now ready to use! Here's what's been configured:

### 📁 New Directories and Files

```
_data/
  └── books.yml              ← All your stories go here!
_layouts/
  ├── default.html           ← Site styling & colors
  ├── home.html              ← Book list view
  ├── book.html              ← Chapter list for each book
  └── chapter.html           ← Chapter reader view
_pages/
  └── 404.md                 ← Custom "not found" page
_plugins/
  └── storybook_generator.rb ← Auto-generates pages from books.yml
STORYBOOK_GUIDE.md           ← Complete guide for managing content
SETUP.md                     ← This file
```

### 🎨 Colors Configured

- **Primary Colors**: Light Blue (`#afd8e8`) & Light Green (`#90ee90`)
- **Accent**: Dark Green (`#27ae60`) for links
- **Text**: Dark (`#2c3e50`) & Light (`#7f8c8d`)

## 🚀 Getting Started

### Step 1: Configure GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Select **Deploy from a branch**
4. Branch: `main` (or `master`), Folder: `/ (root)`
5. Click **Save**

Your site will be live at: `https://yourusername.github.io/`

### Step 2: Add Your First Book

Edit `_data/books.yml`:

```yaml
- id: first_book
  title: "My First Book"
  subtitle: "Book I"
  description: "The beginning of an amazing journey."
  chapters:
    - id: chapter_one
      title: "It Begins"
      content: |
        Write your story here...
```

### Step 3: Commit and Push

```bash
git add _data/books.yml
git commit -m "Add first book"
git push
```

Wait 1-2 minutes for GitHub Pages to rebuild, then visit your site!

## 🔧 Local Development (Optional)

To test changes locally before pushing:

```bash
# Install dependencies
bundle install

# Start the local server
bundle exec jekyll serve

# Visit http://localhost:4000
```

Press `Ctrl+C` to stop the server.

## 📚 Managing Content

**ONLY EDIT**: `_data/books.yml`

Everything else is automatically generated from this file. The site will:
- ✅ Create book pages with chapter lists
- ✅ Create chapter pages with navigation
- ✅ Build the home page showing all books
- ✅ Handle styling and colors

See **STORYBOOK_GUIDE.md** for detailed instructions on formatting chapters and adding books.

## 🎨 Customizing the Site

### Changing Colors

Edit `_layouts/default.html` and find this section:

```css
:root {
  --color-primary-blue: #afd8e8;
  --color-primary-green: #90ee90;
  --color-dark: #2c3e50;
  --color-light: #ecf0f1;
  --color-text: #2c3e50;
  --color-text-light: #7f8c8d;
  --color-accent: #27ae60;
}
```

Change the hex color codes to your preferred colors.

### Changing Site Title and Description

Edit `_config.yml`:

```yaml
title: Your New Title
description: >-
  Your site description here.
```

## 🚨 Important Notes

1. **Never edit** `_plugins/storybook_generator.rb` unless you know Ruby
2. **Always use 2 spaces** for indentation in YAML files
3. **Never use tabs** - they will break the YAML
4. **Keep book and chapter IDs** in lowercase with underscores only
5. **Test locally** before pushing if making code changes

## 📞 Troubleshooting

### Site not updating after push
- Wait 2-3 minutes for GitHub Pages to rebuild
- Hard refresh your browser (Ctrl+Shift+R or Cmd+Shift+R)
- Check the GitHub Actions tab in your repository for build errors

### Chapters not appearing
- Check `_data/books.yml` for YAML formatting errors
- Ensure proper 2-space indentation
- Look for error messages in GitHub Actions

### Book page shows empty
- Make sure chapters are properly indented
- Verify chapter IDs are unique within the book
- Check that content uses the `|` multiline syntax

## 📖 Next Steps

1. **Read STORYBOOK_GUIDE.md** for detailed content management
2. **Edit _data/books.yml** to add your stories
3. **Commit and push** changes to GitHub
4. **Share** your storybook with the world!

## 🎯 File Structure Quick Reference

| File | Purpose | Edit? |
|------|---------|-------|
| `_data/books.yml` | All story content | ✅ YES |
| `_layouts/default.html` | Site colors & styles | ⚠️ Only CSS |
| `_layouts/home.html` | Book list display | ❌ NO |
| `_layouts/book.html` | Chapter list display | ❌ NO |
| `_layouts/chapter.html` | Chapter reader | ❌ NO |
| `_plugins/storybook_generator.rb` | Auto-generator | ❌ NO |
| `_config.yml` | Site config | ✅ YES (title/description) |

---

**Welcome to your storybook!** 📖✨

For questions about formatting, see **STORYBOOK_GUIDE.md**.
