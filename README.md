# 📖 The Adventures of Starmonia

A beautiful, simple storybook platform for sharing multi-book series on GitHub Pages.

![Colors](https://img.shields.io/badge/colors-blue%2Bgreen%2B%2Bblack%2Bwhite-brightgreen)
![Theme](https://img.shields.io/badge/theme-husky%20%26%20eyes-blue)
![Platform](https://img.shields.io/badge/platform-github%20pages-black)

---

## 🚀 Quick Start

### 1. Add Your Stories

Edit **`_data/books.yml`** to add books and chapters:

```yaml
- id: my_book
  title: "My Book Title"
  subtitle: "Book I"
  description: "What this book is about."
  chapters:
    - id: chapter_one
      title: "First Chapter"
      content: |
        Your story starts here...
        Write as much as you want.
```

### 2. Commit and Push

```bash
git add _data/books.yml
git commit -m "Add my book"
git push
```

### 3. Visit Your Site

Your storybook is now live at: `https://yourusername.github.io/`

---

## 📚 Site Structure

```
📁 The Adventures of Starmonia
├── 📄 _data/books.yml              ← EDIT: All your stories
├── 📁 _layouts/                    ← Site pages (don't edit)
├── 📁 _plugins/                    ← Auto-generator (don't edit)
├── 📄 index.markdown               ← Home page (don't edit)
├── 📄 STORYBOOK_GUIDE.md           ← How to write chapters
├── 📄 SETUP.md                     ← Installation guide
└── 📄 README.md                    ← This file
```

---

## 🎨 Features

✅ **Multiple Books** - Organize stories into different books
✅ **Chapters** - Break books into readable chapters
✅ **Beautiful Design** - Responsive, modern styling
✅ **Easy to Update** - Just edit YAML, no code needed
✅ **GitHub Pages Ready** - Automatic hosting and deployment
✅ **Custom Colors** - Light blue & green (eyes) + black & white (husky)
✅ **Mobile Friendly** - Works on phones and tablets

---

## 🎯 For Non-Developers

**You only need to edit one file**: `_data/books.yml`

Everything else is automatic! The site will:
- Create beautiful book pages
- Generate chapter navigation
- Build the home page
- Style everything with your colors

See **STORYBOOK_GUIDE.md** for detailed instructions.

---

## 🔧 For Developers

### Local Development

```bash
# Install dependencies
bundle install

# Start local server
bundle exec jekyll serve

# Visit http://localhost:4000
```

### Custom Colors

Edit `_layouts/default.html` and change the CSS variables:

```css
:root {
  --color-primary-blue: #afd8e8;
  --color-primary-green: #90ee90;
  --color-dark: #2c3e50;
  --color-accent: #27ae60;
}
```

### How It Works

1. You add books/chapters to `_data/books.yml`
2. The plugin (`_plugins/storybook_generator.rb`) reads the data
3. Jekyll generates HTML pages for each book and chapter
4. GitHub Pages hosts the static site

---

## 📖 Example Content

The site comes with 2 example books (Book I & II) with chapters. Check them out on the live site!

To replace with your own stories, edit `_data/books.yml` and remove the example books.

---

## 🚨 Important Rules

- **Only edit** `_data/books.yml` for content
- **Use 2 spaces** for indentation (never tabs!)
- **Keep IDs lowercase** with underscores (e.g., `my_book`, `chapter_one`)
- **Test locally** if making code changes

---

## 💡 Tips

- **Chapter Length**: Keep chapters readable on mobile (2000-3000 words)
- **Chapter Titles**: Make them descriptive and engaging
- **Use Markdown**: Format text with `**bold**`, `*italic*`, etc.
- **Plan Structure**: Decide on books and chapters before writing

---

## 🆘 Troubleshooting

### Site not updating?
- Wait 1-2 minutes for GitHub Pages to rebuild
- Hard refresh: `Ctrl+Shift+R` (or `Cmd+Shift+R` on Mac)

### YAML errors?
- Check indentation is exactly 2 spaces
- Make sure you're not using tabs
- Verify all quotes are closed

### Can't see my chapters?
- Check that chapter IDs are unique in each book
- Make sure indentation matches the template
- Validate YAML at [yamllint.com](https://www.yamllint.com)

See **STORYBOOK_GUIDE.md** for more help.

---

## 📞 Links

- **Guide**: See `STORYBOOK_GUIDE.md` for detailed instructions
- **Setup**: See `SETUP.md` for technical setup
- **About**: Visit `/about` for more about the project

---

## 📝 License

This project is open source and available under the MIT License.

---

**Made with ❤️ for storytellers everywhere.**

*The Adventures of Starmonia awaits...* 📖✨
