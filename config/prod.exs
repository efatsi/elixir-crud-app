use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, CrudApp.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "rFp7XDxWuHFZPxBVpHjoIw3Y41Vlo0aYZ/ELtGU74gjOOuXAhC47hSoyaWk1siLIzpdEzt2mch0mT+fmaOQCag=="

config :logger, :console,
  level: :info
