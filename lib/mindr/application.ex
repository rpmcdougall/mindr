defmodule Mindr.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Mindr.Worker.start_link(arg)
      # {Mindr.Worker, arg}
      Mindr.Consumer.ReminderConsumer,
      Mindr.Consumer.TimerConsumer
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Mindr.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
