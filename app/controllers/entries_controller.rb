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
end
