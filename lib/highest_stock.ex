defmodule HighestStock do
  @moduledoc """
  Documentation for HighestStock.
  """

  @doc """
  Gets the stock name with the highest value currently
  ## Examples

      iex> HighestStock.()
      :world

  """
  def get_highest_stock do
    stocks = ["FB", "GOOGL", "MSFT", "AMZN"]

    name =
      List.first(
        Enum.sort_by(
          Enum.map(stocks, fn stock_code ->
            {:ok, response} =
              Jason.decode(
                HTTPoison.get!(
                  "http://dev.markitondemand.com/MODApis/Api/v2/Quote/json?symbol=#{stock_code}"
                ).body
              )

            %{name: response["Name"], price: response["LastPrice"]}
          end),
          &Map.fetch(&1, :price)
        )
      )

    name
  end
end
