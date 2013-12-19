class MessagePoster
  require 'tinder'

  def self.say(msg, room = Figaro.env.campfire_default_room)
    campfire = Tinder::Campfire.new Figaro.env.campfire_subdomain,
                                    token: Figaro.env.campfire_token

    room = campfire.find_room_by_name(room)
    room.speak msg
  end
end