Jekyll::Hooks.register :site, :post_read do |site|
  # This plugin generates book and chapter pages from _data/books.yml

  books_data = site.data['books'] || []

  books_data.each do |book|
    book_id = book['id']
    book_title = book['title']
    book_subtitle = book['subtitle']
    book_description = book['description']
    chapters = book['chapters'] || []

    # Create book page
    book_page = Jekyll::Page.new(site, site.source, "books/#{book_id}", 'index.html')
    book_page.data['layout'] = 'book'
    book_page.data['book_id'] = book_id
    book_page.data['title'] = book_title
    book_page.data['subtitle'] = book_subtitle
    book_page.data['description'] = book_description
    book_page.data['chapters'] = chapters
    book_page.content = ''
    site.pages << book_page

    # Create chapter pages
    chapters.each_with_index do |chapter, index|
      chapter_id = chapter['id']
      chapter_title = chapter['title']
      chapter_content = chapter['content'] || ''

      # Find previous and next chapter IDs
      prev_chapter = index > 0 ? chapters[index - 1]['id'] : nil
      next_chapter = index < chapters.length - 1 ? chapters[index + 1]['id'] : nil

      chapter_page = Jekyll::Page.new(site, site.source, "books/#{book_id}/#{chapter_id}", 'index.html')
      chapter_page.data['layout'] = 'chapter'
      chapter_page.data['book_id'] = book_id
      chapter_page.data['book_title'] = book_title
      chapter_page.data['title'] = chapter_title
      chapter_page.data['chapter_number'] = index + 1
      chapter_page.data['prev_chapter'] = prev_chapter
      chapter_page.data['next_chapter'] = next_chapter
      chapter_page.content = chapter_content

      site.pages << chapter_page
    end
  end
end
