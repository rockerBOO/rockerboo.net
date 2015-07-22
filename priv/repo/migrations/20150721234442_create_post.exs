defmodule Personal.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :string
      add :created_at, :datetime
      add :status, :string

      timestamps
    end

  end
end
