defmodule TestBank.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  #variavel de modulo
  @required_params [:name, :password_hash, :email, :cep]

  schema "users" do
    field :name, :string
    field :password_hash
    field :email, :string
    field :cep, :string

    timestamps()
  end

  # preciso ter essa func devido ao import Ecto.Changeset - recebe dois parametros: 1 - estrutura na qual estou lidando; 2 - parametros
  # conjunto de mudancas que precisam ser realizadas, como o Ecto passa para o postgres o que precisa ser feito
  def changeset(user \\ %__MODULE__{}, params) do
    user
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_format(:email, ~r/@/)
    |> validate_length(:name, min: 3)
    |> validate_length(:cep, is: 8)
  end
end
