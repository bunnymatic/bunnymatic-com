defmodule BunnymaticCom.AcceptanceCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      alias BunnymaticCom.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      import BunnymaticCom.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(BunnymaticCom.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(BunnymaticCom.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(BunnymaticCom.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
