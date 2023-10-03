defmodule PhxBankWeb.FallbackController do
  use PhxBankWeb, :controller

  def call(conn, {:error, changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(json: PhxBankWeb.ErrorJSON)
    |> render(:error, changeset: changeset)
  end
end
