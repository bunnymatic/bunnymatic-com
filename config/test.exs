use Mix.Config

# We run a server during test for Wallaby integration testing.
config :bunnymatic_com, BunnymaticCom.Endpoint,
  http: [port: 4001],
  server: true,
  secret_key_base: "0123456789012345678901234567890123456789012345678901234567890123456789"

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :bunnymatic_com, BunnymaticCom.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "bunnymatic_com_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :bunnymatic_com, :sql_sandbox, true
