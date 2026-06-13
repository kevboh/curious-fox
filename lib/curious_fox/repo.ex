defmodule CuriousFox.Repo do
  use Ecto.Repo,
    otp_app: :curious_fox,
    adapter: Ecto.Adapters.SQLite3
end
