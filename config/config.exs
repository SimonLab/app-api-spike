# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :app_api,
  ecto_repos: [AppApi.Repo]

# Configures the endpoint
config :app_api, AppApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "24+fklNUvFdvHjR6BSFEGQheSnZWN3IAX48flUFX6iOHhnlg3JfWBwx4mRROe/BK",
  render_errors: [view: AppApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: AppApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
