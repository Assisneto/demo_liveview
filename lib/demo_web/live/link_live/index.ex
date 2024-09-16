defmodule DemoWeb.LinkLive.Index do
  alias Demo.Links
  use DemoWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    user_id = socket.assigns.current_user.id
    socket = socket |> assign(:links, Links.list_links(user_id))
    {:ok, socket}
  end
end
