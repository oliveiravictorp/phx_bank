defmodule PhxBank.Repo do
  use Ecto.Repo,
    otp_app: :phx_bank,
    adapter: Ecto.Adapters.Postgres
end
