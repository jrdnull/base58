defmodule Base58.Mixfile do
  use Mix.Project

  def project do
    [
      app: :base58,
      version: "0.1.0",
      elixir: "~> 1.0",
      description: "Base58 encoding/decoding for Elixir",
      package: package()
    ]
  end

  def application, do: []

  defp package do
    [
      contributors: ["Jordon Smith"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jrdnull/base58"}
    ]
  end
end
