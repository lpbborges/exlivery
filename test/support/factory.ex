defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Orders.{Item, Order}
  alias Exlivery.Users.User

  def user_factory do
    %User{
      address: "Somewhere",
      age: 27,
      cpf: "123456789",
      email: "johndoe@test.com",
      name: "John Doe"
    }
  end

  def item_factory do
    %Item{
      description: "Pepperoni Pizza",
      category: :pizza,
      unity_price: Decimal.new("35.5"),
      quantity: 1
    }
  end

  def order_factory do
    %Order{
      delivery_address: "Somewhere",
      items: [
        build(:item),
        build(:item,
          description: "Hamburguer",
          category: :hamburguer,
          unity_price: Decimal.new("48.64"),
          quantity: 2
        )
      ],
      total_price: Decimal.new("132.78"),
      user_cpf: "123456789"
    }
  end
end
