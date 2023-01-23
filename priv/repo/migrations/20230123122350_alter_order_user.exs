defmodule Hello.Repo.Migrations.AlterOrderUser do
  use Ecto.Migration

  def change do
    alter table(:orders) do
      remove_if_exists :user_uuid, :uuid
      add :user_id, references(:users, on_delete: :delete_all), null: false
    end
  end
end
