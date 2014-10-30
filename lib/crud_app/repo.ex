defmodule Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://efatsi:postgres@localhost/crud_app"
  end

  def priv do
    app_dir(:crud_app, "priv/repo")
  end
end
