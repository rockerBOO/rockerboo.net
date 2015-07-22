defmodule Personal.PostTest do
  use Personal.ModelCase

  alias Personal.Post

  @valid_attrs %{body: "some content", created_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, status: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end
