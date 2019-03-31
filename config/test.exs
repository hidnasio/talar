use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :talar, TalarWeb.Endpoint,
  http: [port: 4002],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :talar, Talar.Repo,
  username: "postgres",
  password: "postgres",
  database: "talar_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Use Chrome in headless mode with ChromeDriver (default port 9515 assumed)
config :hound, driver: "chrome_driver", browser: "chrome_headless"
config :hound, app_host: "http://localhost", app_port: 4002
