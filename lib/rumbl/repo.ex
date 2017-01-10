defmodule Rumbl.Repo do
  # use Ecto.Repo, otp_app: :rumbl

  @moduledoc """
  In Memory Repository.
  """
  def all(Rumbl.User) do
      [%Rumbl.User{id: "1", name: "Arnold", username: "Mafferclamp", password: "password123"},
       %Rumbl.User{id: "2", name: "Jenny", username: "Catscribbler", password: "TokyoFluff"},
       %Rumbl.User{id: "3", name: "Jason", username: "Azn_dude", password: "yungyung"},
       %Rumbl.User{id: "4", name: "Tokyo", username: "Hungry_Kitty", password: "feedmehoooman!"},
       %Rumbl.User{id: "5", name: "Fluff", username: "Hairballz", password: "sleepykitty"}, ]
  end
  def all(_module), do: []

  def get(module, id) do
      Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
        Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end
end
