import Config

config :mindr, Reminders.Repo,
  database: "mindr_repo",
  username: "root",
  password: "root",
  hostname: "localhost"

config :mindr, ecto_repos: [Reminders.Repo]

config :nostrum,
  # The token of your bot as a string
  token: "666",
  # The number of shards you want to run your bot under, or :auto.
  num_shards: :auto
