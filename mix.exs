defmodule Base58.Mixfile do
  use Mix.Project

  def project do
    [
      app: :base58,
      version: "0.1.1",
      elixir: "~> 1.0",
      description: "Base58 encoding/decoding for Elixir",
      package: package(),
      deps: deps()
    ]
  end

  def application, do: []

  defp deps() do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      contributors: ["Jordon Smith"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jrdnull/base58"}
    ]
  end
end
