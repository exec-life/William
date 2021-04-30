defmodule William.Repo do
  use Ecto.Repo,
    otp_app: :william,
    adapter: Ecto.Adapters.Postgres
end
