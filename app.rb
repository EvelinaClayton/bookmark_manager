require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :'bookmarks/index'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
      erb :'bookmarks/bookmarks'
  end

  get '/bookmarks/new' do 
    erb :'bookmarks/new'
  end

  post '/bookmarks' do 
   Bookmark.create(url: params['url'])
    redirect '/bookmarks'
  end
end 