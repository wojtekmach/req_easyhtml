defmodule ReqEasyHTML.MixProject do
  use Mix.Project

  def project do
    [
      app: :req_easyhtml,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:req, github: "wojtekmach/req"},
      {:easyhtml, github: "wojtekmach/easyhtml"}
    ]
  end
end
