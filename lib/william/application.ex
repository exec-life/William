defmodule William.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      William.Repo,
      # Start the Telemetry supervisor
      WilliamWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: William.PubSub},
      # Start the Endpoint (http/https)
      WilliamWeb.Endpoint
      # Start a worker by calling: William.Worker.start_link(arg)
      # {William.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: William.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    WilliamWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
