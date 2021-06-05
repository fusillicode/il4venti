defmodule Il4venti.Repo do
  use Ecto.Repo,
    otp_app: :il4venti,
    adapter: Ecto.Adapters.Postgres
end
