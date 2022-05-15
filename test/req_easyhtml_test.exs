defmodule ReqEasyHTMLTest do
  use ExUnit.Case
  doctest ReqEasyHTML

  test "greets the world" do
    req =
      Req.new()
      |> ReqEasyHTML.attach()

    Req.get!(req, url: "https://elixir-lang.org").body[".entry-summary h5"]
    |> IO.inspect()
  end
end
