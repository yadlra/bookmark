require 'bookmark'

describe Bookmark do
  describe '#.all' do
    it 'shows all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://www.bbc.co.uk/")
      expect(bookmarks).to include("https://github.com/makersacademy/course")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
