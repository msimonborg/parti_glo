defmodule PartiGlo.MixProject do
  use Mix.Project

  def project do
    [
      app: :parti_glo,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {PartiGlo.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:benchee, "~> 1.1", only: :dev},
      {:credo, "~> 1.6", only: [:dev, :test]},
      {:ex_doc, "~> 0.28.4", only: [:dev, :test]}
    ]
  end

  defp description do
    """
    Parti(tioned) Glo(bal) Registry
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["m. simon borg"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/msimonborg/phx_test"
      }
    ]
  end

  defp aliases do
    [build: ["test", "credo --strict", "format --check-formatted", "docs"]]
  end
end
