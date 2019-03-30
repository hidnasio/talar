use ExGuard.Config

guard("test", run_on_start: true)
|> command("mix test --color")
|> watch(~r{\.(erl|ex|exs|eex|xrl|yrl)\z}i)
|> ignore(~r{deps})
|> notification(:auto)

guard("dialyzer", run_on_start: true)
|> command("mix dialyzer --quiet")
|> watch(~r{\.(erl|ex|exs|eex|xrl|yrl)\z}i)
|> ignore(~r{deps})
|> notification(:auto)
