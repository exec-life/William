# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :william,
  ecto_repos: [William.Repo]

# Configures the endpoint
config :william, WilliamWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0+jf79/IgyQv/sAcJ4lIsHSCrKBJoffa/IrvZT7cR3OW568fEhAmpcPfmXpTmtNk",
  render_errors: [view: WilliamWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: William.PubSub,
  live_view: [signing_salt: "XiEGN36p"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
