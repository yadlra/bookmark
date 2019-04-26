require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'shows all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (URL) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (URL) VALUES ('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (URL) VALUES ('http://www.google.com');")

      bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.makersacademy.com"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com"
    end
  end

  describe ".create" do
    it "creates new bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (URL) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (URL) VALUES ('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (URL) VALUES ('http://www.google.com');")

    Bookmark.create(url: "http://www.facebook.com")
    expect(Bookmark.all).to include ("http://www.facebook.com")
    end
  end
end
