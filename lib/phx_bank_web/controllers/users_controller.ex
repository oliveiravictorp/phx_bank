defmodule PhxBankWeb.UsersController do
  use PhxBankWeb, :controller

  alias PhxBank.Users
  alias Users.User

  action_fallback PhxBankWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Users.create(params) do
      conn
      |> put_status(:created)
      |> render(:create, user: user)
    end
  end
end
