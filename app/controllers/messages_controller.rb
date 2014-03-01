class MessagesController < ApplicationController
  def index
  end

  def bad_post_message
    campfire = Tinder::Campfire.new(Figaro.env.campfire_subdomain,
                                    token: Figaro.env.campfire_token)

    room = campfire.find_room_by_name(Figaro.env.campfire_default_room)
    room.speak(params[:message])

    redirect_to :root
  end


  def better_post_message
    MessagePoster.say(params[:message])

    redirect_to :root
  end

end
