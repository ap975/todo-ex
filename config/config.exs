# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :todo_ex,
  namespace: Todo,
  ecto_repos: [Todo.Repo]

# Configures the endpoint
config :todo_ex, TodoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GxB8xJnxsaP6gcJshkFDi7T1YP/TBzfAo6JPg+tS0HSLpS7JDRVvLnUtc0cx4EbI",
  render_errors: [view: TodoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Todo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
