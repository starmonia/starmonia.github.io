# The Adventures of Starmonia - Storybook Management Guide

Welcome to The Adventures of Starmonia! This guide will help you manage the storybook, add new books, chapters, and more.

## 📖 Overview

This site uses a simple YAML format to manage all books and chapters. Everything you need to edit is in the **`_data/books.yml`** file. No coding knowledge required!

## 🚀 Quick Start

### Adding a New Book

1. Open `_data/books.yml` in a text editor
2. Scroll to the bottom
3. Add a new book entry (copy the template below):

```yaml
- id: book_slug
  title: "Book Title"
  subtitle: "Book I"
  description: "A short description of what this book is about."
  chapters: []
```

**Important:**
- `id` should be lowercase with underscores (e.g., `book_one`, `the_awakening`)
- `title` is what readers see
- `subtitle` appears on the book card (e.g., "Book I", "Book II")
- Leave `chapters: []` empty for now

### Adding Chapters to a Book

Chapters go inside the `chapters:` section of a book. Here's the format:

```yaml
- id: book_slug
  title: "Book Title"
  subtitle: "Book I"
  description: "A short description."
  chapters:
    - id: chapter_slug
      title: "Chapter Title"
      content: |
        Your chapter content goes here.
        You can write multiple paragraphs.
        Just indent them properly with spaces.

    - id: another_chapter
      title: "Another Chapter"
      content: |
        More story content here.
```

**Important:**
- `id` should be lowercase with underscores (e.g., `chapter_one`, `the_discovery`)
- `title` is what readers see
- `content` uses the `|` symbol followed by indented text (see template above)
- Blank lines between paragraphs are preserved

## ✍️ Writing Chapter Content

### Formatting Tips

You can use **Markdown** formatting in chapter content:

```markdown
**Bold text** - Use double asterisks
*Italic text* - Use single asterisks
~~Strikethrough~~ - Use double tildes

# Heading (use sparingly in chapters)
## Smaller heading

- Bullet point
- Another point

1. Numbered list
2. Another item
```

### Example Chapter

```yaml
    - id: chapter_one
      title: "A New Beginning"
      content: |
        The sun rose over the mountains, casting long shadows across the valley.
        Everything felt different today.

        Sarah stepped outside, her heart racing with anticipation. Something
        was waiting for her, something important. The path ahead seemed to
        glow with possibility.
```

## 📁 File Structure

```
starmonia.github.io/
├── _data/
│   └── books.yml          ← EDIT THIS FILE to manage all content
├── _layouts/
│   ├── default.html       ← Site styling
│   ├── home.html          ← Book list page
│   ├── book.html          ← Chapter list for a book
│   └── chapter.html       ← Individual chapter display
├── _plugins/
│   └── storybook_generator.rb  ← Auto-generates pages (don't edit)
└── index.markdown         ← Home page (don't edit)
```

## 🎨 Customizing Colors

The site uses these colors:
- **Light Blue**: `#afd8e8` (eyes - primary)
- **Light Green**: `#90ee90` (eyes - primary)
- **Dark Text**: `#2c3e50` (husky - dark)
- **Accent Green**: `#27ae60` (links and highlights)

To change these colors, edit `_layouts/default.html` and look for the `:root` CSS variables section at the top of the `<style>` tag.

## 🚢 Publishing Changes

### Local Testing (Optional)

To test the site locally before publishing:

```bash
cd starmonia.github.io
bundle install
bundle exec jekyll serve
```

Then visit `http://localhost:4000` in your browser.

### Publishing to GitHub Pages

1. Make your changes to `_data/books.yml`
2. Save the file
3. In GitHub, commit your changes with a message like "Add new chapter" or "Add Book III"
4. The site automatically updates within a few minutes!

## 📝 YAML Format Rules

YAML is very particular about formatting. Follow these rules:

✅ **Correct:**
```yaml
- id: chapter_one
  title: "Chapter One"
  content: |
    This is content.
```

❌ **Wrong (tabs instead of spaces):**
```yaml
-	id: chapter_one
		title: "Chapter One"
```

**Tips:**
- Always use **2 spaces** for indentation (never tabs)
- Keep consistent indentation
- Quotes are optional for simple text, but use them if your text contains colons or special characters
- Use `|` to start multi-line content

## 🐛 Troubleshooting

### Changes not appearing
- Check that you properly indented the content with spaces (not tabs)
- Make sure the file saved successfully
- Wait a few minutes for GitHub Pages to rebuild
- Hard refresh your browser (Ctrl+Shift+R or Cmd+Shift+R)

### Content appears broken
- Check YAML indentation (must be 2 spaces per level)
- Make sure chapter IDs and book IDs don't have spaces (use underscores instead)
- Verify all quotes are closed

### Special characters not working
- If you have a colon `:` in your title or content, wrap it in quotes: `"Title: With Colon"`
- For other special characters, also use quotes

## 📚 Complete Book Template

Copy this when adding a new book:

```yaml
- id: new_book_id
  title: "New Book Title"
  subtitle: "Book X"
  description: "What this book is about in one or two sentences."
  chapters:
    - id: chapter_one
      title: "First Chapter"
      content: |
        Start your story here.
        This is the second paragraph.

    - id: chapter_two
      title: "Second Chapter"
      content: |
        Continue the adventure.
```

## 🎯 Pro Tips

1. **Keep chapters reasonable length** - Very long chapters are harder to read on phones
2. **Use clear chapter titles** - Readers should know what to expect
3. **Write in complete sentences** - The formatting handles the rest
4. **Test special characters** - If using `&`, `<`, `>`, wrap text in quotes
5. **Plan your story structure** - Decide on book and chapter titles before writing

## 🤝 Need Help?

If something breaks or looks weird:
1. Check the indentation in `_data/books.yml` (must be consistent 2-space indentation)
2. Look for red underlines or error marks in your text editor
3. Copy the YAML template above and fill it in carefully
4. Compare your formatting to the existing books in the file

---

**Happy Storytelling!** 📖✨

The Adventures of Starmonia is waiting to be told.
