defmodule Hello.ShoppingCartFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Hello.ShoppingCart` context.
  """

  @doc """
  Generate a unique cart user_id.
  """
  def unique_cart_user_id do
    raise "implement the logic to generate a unique cart user_id"
  end

  @doc """
  Generate a cart.
  """
  def cart_fixture(attrs \\ %{}) do
    {:ok, cart} =
      attrs
      |> Enum.into(%{
        user_id: unique_cart_user_id()
      })
      |> Hello.ShoppingCart.create_cart()

    cart
  end

  @doc """
  Generate a cart_item.
  """
  def cart_item_fixture(attrs \\ %{}) do
    {:ok, cart_item} =
      attrs
      |> Enum.into(%{
        price_when_carted: "120.5",
        quantity: 42
      })
      |> Hello.ShoppingCart.create_cart_item()

    cart_item
  end
end
