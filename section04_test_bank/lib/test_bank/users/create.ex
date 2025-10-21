defmodule TestBank.Users.Create do
  alias TestBank.Users.User
  alias TestBank.Repo

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end

end
