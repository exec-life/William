defmodule WilliamWeb.PageLive do
  use WilliamWeb, :live_view

  alias William.Accounts
  alias William.Accounts.User

  @impl true
  def mount(_params, _session, socket) do
    changeset = Accounts.change_user_registration(%User{})
    {:ok,
      socket
      |> assign(changeset: changeset)
      |> assign(trigger_submit: false)}
  end

end
