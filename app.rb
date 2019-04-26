require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get'/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    p "Information has been submitted"
    p params
     #here I will add a model function so I can remember later
     Bookmark.create(url: params['url'])
     redirect '/bookmarks' #remeber that this info is going to the boomarks
  end

  run! if app_file == $0
end
