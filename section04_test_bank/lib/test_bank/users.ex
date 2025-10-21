# arquivo único, ponto de entrada por contexto
defmodule TestBank.Users do
  alias TestBank.Users.Create
  alias TestBank.Users.Get
  alias TestBank.Users.Update
  alias TestBank.Users.Delete

  defdelegate create(params), to: Create, as: :call
  defdelegate delete(id), to: Delete, as: :call
  defdelegate get(id), to: Get, as: :call
  defdelegate update(params), to: Update, as: :call
end
