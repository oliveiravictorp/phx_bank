defmodule PhxBank.Users do
  alias PhxBank.Users.Create

  defdelegate create(params), to: Create, as: :call
end
