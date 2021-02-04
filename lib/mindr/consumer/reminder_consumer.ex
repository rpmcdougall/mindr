defmodule Mindr.Consumer.ReminderConsumer do
  use Nostrum.Consumer

  alias Nostrum.Api

  def start_link do
    Consumer.start_link(__MODULE__)
  end

  def handle_event({:MESSAGE_CREATE, msg, _ws_state}) do
    case msg.content do
      "!remind" ->
        Api.create_message(msg.channel_id, "Not yet implemented!")

      "!rm.reminder" ->
        Api.create_message(msg.channel_id, "Not yet implemented!")

      "!get.reminder" ->
        Api.create_message(msg.channel_id, "Not yet implemented!")

      _ ->
        :ignore
    end
  end

  def handle_event(_event) do
    :noop
  end
end
