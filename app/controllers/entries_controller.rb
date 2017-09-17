class EntriesController < ApplicationController
  def index
    @websites = [
      ["http://railsgirls.com", "Rails Girls"],
      ["https://en.wikibooks.org/wiki/Ruby_Programming", "Wikibooks"],
      ["http://guides.rubyonrails.org", "Ruby on Rails Guides"],
    ]
    @entries = Entry.all
    render 'entries/index'
  end

  def show
    @entry = Entry.find(params["id"])
    render 'entries/show'
  end

  def new
    render 'entries/new'
  end

  def create
  entry = Entry.create(title: params["entry"]["title"],  date: Date.current , contents:params["entry"]["contents"] )
   redirect_to(entry_path(entry))
  end
  def edit
    @entry = Entry.find(params["id"])
    render 'entries/edit'

  end
  def update
  entry_params = params["entry"].permit("title", "contents")
  entry = Entry.find(params["id"])
  entry.update(entry_params)
  redirect_to(entry_path(entry))
  end
end
