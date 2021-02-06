defmodule Reminders.Repo do
  use Ecto.Repo,
    otp_app: :mindr,
    adapter: Ecto.Adapters.Postgres
end
