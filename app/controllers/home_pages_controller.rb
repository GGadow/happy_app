#Created with: rails generate controller home_pages
#Modified by hand
#Now realizing I should have used a generic name such as "FixedPages" but oh, well.
#
# We need a corresponding template, so add one to app/views/home_pages

class HomePagesController < ApplicationController

  def home #matches app/views/home_pages/home.html.erb

  end

  def create
    respond_to do |format|
      if params[:table] == "quotes"
        o = Quote.offset(rand(Quote.count)).first
      elsif params[:table] == "jokes"
        o = Joke.offset(rand(Joke.count)).first
      end
      format.html { redirect_to root_path, notice: "#{o.part1} #{o.part2}" }
    end 
  end

end
