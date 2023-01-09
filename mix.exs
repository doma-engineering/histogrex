defmodule Histogrex.Mixfile do
  use Mix.Project

  @version "0.0.5"

  def project do
    [
      app: :doma_histogrex,
      deps: deps(),
      elixir: "~> 1.14",
      name: "Histogrex",
      version: @version,
      consolidate_protocols: Mix.env != :test,
      description: "Concurrent High Dynamic Range (HDR) Histogram",
      package: [
        licenses: ["MIT"],
        links: %{
          "Github" => "https://github.com/doma-engineering/histogrex",
          "Upstream" => "https://github.com/2nd/histogrex"
        },
        maintainers: ["Karl Seguin"]
      ]
    ]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.29.1", only: :dev},
      {:dialyxir, "~> 1.2", only: [:dev], runtime: false},
    ]
  end
end
