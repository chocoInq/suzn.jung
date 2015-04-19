class HomeController < ApplicationController
  def index
    @comments = Comment.all.reverse
  end
  def favorite
  end
  def comment
    @comments = Comment.all.reverse
  end
  def write
    name = params[:name]
    msg = params[:message]
    Comment.create(name: name, content: msg)
    redirect_to '/#contact'
  end
end
