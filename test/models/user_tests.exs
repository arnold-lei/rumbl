defmodule Rumbl.UserTest do
    use Rumbl.ModelCase, async: true
    alias Rumbl.User

    @valid_attrs %{name: "A User", username: "eva", password: "secret"}
    @invalid_attrs %{}

    test "Changeset with valid attributes" do
        changeset = User.changeset(%User{}, @valid_attrs)
        assert changeset.valid?
    end

    test "changeset with invalid attributes" do
        changeset = User.changeset(%User{}, @invalid_attrs)
        refute changeset.valid?
    end

    test "changeset does not accept long usernames" do
        attrs = Map.put(@valid_attrs, :username, String.duplicate("a", 30))
        assert {:username, {"Should be most %{count} character(s)", [count: 20 ]}} in errors_on(%User{}, attrs)
    end

    test "registration_changeset password must be at least 6 chars long" do
        attrs = Map.put(@valid_attrs, :password, "12345")
        changeset = User.registration_changeset(%User{}, attrs)
        assert {:password, {"should be atleats %{count} characters(s)", count: 6 }} in changeset.errors
    end
end