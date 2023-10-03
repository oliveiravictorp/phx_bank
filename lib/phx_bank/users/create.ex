defmodule PhxBank.Users.Create do
  alias PhxBank.Users.User
  alias PhxBank.Repo

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
