# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :il4venti,
  ecto_repos: [Il4venti.Repo]

# Configures the endpoint
config :il4venti, Il4ventiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vCNY9+jnsKMnhcMEGdNMIF5EpiaKhO4+Gwyh6/6e1dgJV4q8D4655N/wZ2B8BcCq",
  render_errors: [view: Il4ventiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Il4venti.PubSub,
  live_view: [signing_salt: "pwFAUuU4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
