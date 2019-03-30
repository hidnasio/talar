use ExGuard.Config

files = ~r{\.(erl|ex|exs|eex|xrl|yrl)\z}i
ingored_files = ~r{deps}

run = fn cmd ->
  cmd
  |> watch(files)
  |> ignore(ingored_files)
  |> notification(:auto)
end

guard("test", run_on_start: true)
|> command("mix test --color")
|> run.()

guard("dialyzer", run_on_start: true)
|> command("mix dialyzer --quiet")
|> run.()

guard("credo", run_on_start: true)
|> command("mix credo list --strict --format=oneline -a")
|> run.()

guard("formatter", run_on_start: true)
|> command("mix format --check-formatted --check-equivalent --dry-run")
|> run.()
