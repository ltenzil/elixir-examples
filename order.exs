defmodule Order do
  # @taxrates %{ NC: 0.075, TX: 0.08, _: 0 }
  @orders [
    [ id: 123, ship_to: :NC, net_amount: 100.00 ],
    [ id: 124, ship_to: :OK, net_amount:  35.50 ],
    [ id: 125, ship_to: :TX, net_amount:  24.00 ],
    [ id: 126, ship_to: :TX, net_amount:  44.80 ],
    [ id: 127, ship_to: :NC, net_amount:  25.00 ],
    [ id: 128, ship_to: :MA, net_amount:  10.00 ],
    [ id: 129, ship_to: :CA, net_amount: 102.00 ],
    [ id: 120, ship_to: :NC, net_amount:  50.00 ]
  ]

  def orders, do: @orders

  def fetch_ship_rates(location) do
    case location do
      :NC -> 0.075
      :TX -> 0.08
      _ -> 0.0
    end
  end

  def add_shipping_rates() do
    for order <- orders do
      srates = Order.fetch_ship_rates(order[:ship_to])
      nrates = [srates: srates, nrates: Float.ceil(srates + order[:net_amount], 2)]
      order ++ nrates
    end
  end
end
