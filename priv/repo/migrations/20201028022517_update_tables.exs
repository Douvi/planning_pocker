defmodule PandaPhoenix.Repo.Migrations.UpdateFieldPrivateMessage do
  use Ecto.Migration

  def up do
    execute """
      ALTER TABLE ONLY tables ALTER COLUMN voting_rule SET DEFAULT '0, 1, 2, 3, 5, 8, 13, 21';
    """
  end
end
