defmodule CrudApp.UserController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index", users: Repo.all(User)
  end

  def show(conn, %{"id" => id}) do
    case Repo.get(User, String.to_integer(id)) do
      user when is_map(user) ->
        render conn, "show", user: user
      _ ->
        render conn, "not_found"
    end
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
