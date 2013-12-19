class MessagesController < ApplicationController
  def index
  end

  def post_message
    MessagePoster.say(params[:message])

    redirect_to :root
  end

end
