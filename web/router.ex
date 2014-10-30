defmodule CrudApp.Router do
  use Phoenix.Router

  get "/", CrudApp.UserController, :index, as: :pages

  resources "users", CrudApp.UserController
end
