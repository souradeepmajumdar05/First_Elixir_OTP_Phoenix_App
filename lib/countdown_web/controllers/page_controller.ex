defmodule CountdownWeb.PageController do
  use CountdownWeb, :controller

  alias Countdown.Events

#  def home(conn, _params) do
#    # The home page is often custom made,
#    # so skip the default app layout.
#    render(conn, :home, layout: false)
#  end
  def home(conn, _params) do
    events = Events.list_future_events()
    #render conn, "index.html"
    render conn, "home.html", events: events
  end
#
#  def index(conn, _params) do
#    events = Events.list_future_events()
#    #render conn, "index.html"
#    render conn, "index.html", events: events
#  end
end
