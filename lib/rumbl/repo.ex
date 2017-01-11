defmodule Rumbl.Repo do
  use Ecto.Repo, otp_app: :rumbl

  @moduledoc """
  In Memory Repository.
  """
  # def all(Rumbl.User) do
  #     [%Rumbl.User{name: "Arnold", username: "Mafferclamp", password_hash: "password123"},
  #      %Rumbl.User{name: "Jenny", username: "Catscribbler", password_hash: "TokyoFluff"},
  #      %Rumbl.User{name: "Jason", username: "Azn_dude", password_hash: "yungyung"},
  #      %Rumbl.User{name: "Tokyo", username: "Hungry_Kitty", password_hash: "feedmehoooman!"},
  #      %Rumbl.User{name: "Fluff", username: "Hairballz", password_hash: "sleepykitty"}, ]
  # end
  # def all(_module), do: []
  #
  # def get(module, id) do
  #     Enum.find all(module), fn map -> map.id == id end
  # end
  #
  # def get_by(module, params) do
  #   Enum.find all(module), fn map ->
  #       Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
  #   end
  # end
end
