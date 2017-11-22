# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :thaumatin,
  ecto_repos: [Thaumatin.Repo]

# Configures the endpoint
config :thaumatin, Thaumatin.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ru9fsr90hbV6uOTq+8RR607fKFmsPPZG/w1XZmJg10IE36fsCJt6n6YA+GjY6eE5",
  render_errors: [view: Thaumatin.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Thaumatin.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
