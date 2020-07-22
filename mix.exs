defmodule MundaneElements.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mundane_elements,
      version: "0.1.2",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "MundaneElements",
      source_url: "https://github.com/bermannoah/mundane_elements"
    ]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp description do
    """
    Mundane Elements is a system for checking the filetype of a given file using so-called Magic Bytes.
    """
  end

  defp package do
    [
      name: :mundane_elements,
      files: ["lib", "config", "mix.exs", "README*", "LICENSE*" ],
      maintainers: ["Noah Berman"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/bermannoah/mundane_elements"}
    ]
  end

  defp deps do
    [{:benchfella, "~> 0.3.0", only: :dev},
    {:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
