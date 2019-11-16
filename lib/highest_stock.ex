defmodule HighestStock do
  @moduledoc """
  Documentation for HighestStock.
  """

  @doc """
  Gets the stock name with the highest value currently
  ## Examples

      iex> HighestStock.find_for ["SOMCOM", "AMZN"]
      {name: "Some Company", price: 9999999}

  """
  def find_for(stocks) do
    # stocks = ["FB", "GOOGL", "MSFT", "AMZN"]

    stocks
    |> Enum.map(fn stock_code -> get_current_stock_details(stock_code) end)
    |> Enum.sort_by(&Map.fetch(&1, :price))
    |> List.last()
  end

  def get_current_stock_details(stock_code) do
    response =
      HTTPoison.get!(
        "http://dev.markitondemand.com/MODApis/Api/v2/Quote/json?symbol=#{stock_code}"
      ).body
      |> Jason.decode!()

    %{name: response["Name"], price: response["LastPrice"]}
  end
end
