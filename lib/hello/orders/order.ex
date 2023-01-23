defmodule Hello.Orders.Order do
  use Ecto.Schema
  import Ecto.Changeset

  schema "orders" do
    field :total_price, :decimal
    belongs_to :user, Hello.Accounts.User

    has_many :line_items, Hello.Orders.LineItem
    has_many :products, through: [:line_items, :product]

    timestamps()
  end

  @doc false
  def changeset(order, attrs) do
    order
    |> cast(attrs, [:user_id, :total_price])
    |> validate_required([:user_id, :total_price])
  end
end
