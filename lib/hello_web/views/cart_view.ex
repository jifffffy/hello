defmodule HelloWeb.CartView do
  use HelloWeb, :view

  alias Hello.ShoppingCart

  def currency_to_str(%Decimal{} = val), do: "$#{Decimal.round(val, 2)}"
end
