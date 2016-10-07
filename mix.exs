defmodule Walle.Mixfile do
  use Mix.Project

  def project do
    [app: :walle,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :hedwig, :cowboy],
     mod: {Walle, []}]
  end

  defp deps do
    [
      {:hedwig, github: "hedwig-im/hedwig"},
      {:hedwig_q, path: "../hedwig_q"},
      {:cowboy, "~> 1.0"},
      {:plug, "~> 1.2"},
    ]
  end
end
