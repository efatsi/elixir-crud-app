defmodule User do
  use Ecto.Model

  validate user, name: present()

  schema "users" do
    field :name, :string
  end
end
