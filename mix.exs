defmodule ReqEasyHTML.MixProject do
  use Mix.Project

  def project do
    [
      app: :req_easyhtml,
      version: "0.2.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      preferred_cli_env: [
        docs: :docs,
        "hex.publish": :docs
      ],
      docs: [
        main: "readme",
        extras: ["README.md", "CHANGELOG.md"]
      ],
      package: [
        description: "Req plugin for EasyHTML.",
        licenses: ["Apache-2.0"],
        links: %{
          "GitHub" => "https://github.com/wojtekmach/req_easyhtml"
        }
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:req, "0.5.0"},
      {:easyhtml, "~> 0.4.0"},
      {:ex_doc, ">= 0.0.0", only: :docs}
    ]
  end
end
