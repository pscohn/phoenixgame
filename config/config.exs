# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenixgame,
  ecto_repos: [Phoenixgame.Repo]

# Configures the endpoint
config :phoenixgame, Phoenixgame.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hqIt0SGrpt4h/Ghp8NnrsU5yYh8dswZRbKnvuf2XZkCqpqqTD69qyd5pVBOCMiTz",
  render_errors: [view: Phoenixgame.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixgame.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
