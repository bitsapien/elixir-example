# HighestStock

An example app for the Elixir Meetup in Hyderabad

Problem Statement: Fetch stock prices from the API and return the stock with the highest price with the name of the stock.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `highest_stock` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:highest_stock, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/highest_stock](https://hexdocs.pm/highest_stock).


## Help

**Example Stock Codes** "FB", "GOOGL", "MSFT", "AMZN"

**Project URL**         https://github.com/bitsapien/elixir-example

**Stock API**           http://dev.markitondemand.com/MODApis/Api/v2/Quote/json?symbol=#{stock_code}

#### Suggested libraries:

HTTPoison(for reading from the API): https://github.com/edgurgel/httpoison
Jason(parsing the response from the API): https://github.com/michalmuskala/jason

Keep yourself updated on this Telegram group -
Telegram link: https://t.me/elixirindia
