defmodule Il4venti.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Il4venti.Repo,
      # Start the Telemetry supervisor
      Il4ventiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Il4venti.PubSub},
      # Start the Endpoint (http/https)
      Il4ventiWeb.Endpoint
      # Start a worker by calling: Il4venti.Worker.start_link(arg)
      # {Il4venti.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Il4venti.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Il4ventiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
