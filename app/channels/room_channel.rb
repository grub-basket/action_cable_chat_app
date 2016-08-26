class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
    stream_from "user_channel_#{message_user.id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
