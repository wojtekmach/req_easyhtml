# ReqEasyHTML

[Req](https://github.com/wojtekmach/req) plugin for [EasyHTML](https://github.com/wojtekmach/easyhtml).

## Usage

```elixir
Mix.install([
  {:req, "~> 0.4.0"},
  {:req_easyhtml, "~> 0.1.0"}
])

req =
  (Req.new()
  |> ReqEasyHTML.attach())

Req.get!(req, url: "https://elixir-lang.org").body[".entry-summary h5"]
#=>
# #EasyHTML[<h5>
#    Elixir is a dynamic, functional language for building scalable and maintainable applications.
#  </h5>]
```
