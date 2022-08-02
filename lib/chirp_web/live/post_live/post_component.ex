defmodule ChirpWeb.PostLive.PostComponent do
  use ChirpWeb, :live_component

  alias Chirp.Timeline

  def handle_event("like", _, socket) do
    Chirp.Timeline.inc_likes(socket.assigns.post)
    {:noreply, socket}
  end

  def handle_event("repost", _, socket) do
    Chirp.Timeline.inc_repost(socket.assigns.post)
    {:noreply, socket}
  end
end
