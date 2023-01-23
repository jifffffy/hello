defmodule Hello.Repo.Migrations.AlterCartUser do
  use Ecto.Migration

  def change do
    alter table(:carts) do
      remove_if_exists :user_uuid, :uuid
      add :user_id, references(:users, on_delete: :delete_all), null: false
    end

    drop_if_exists index(:carts, [:user_uuid])
    create index(:carts, [:user_id])
  end
end
