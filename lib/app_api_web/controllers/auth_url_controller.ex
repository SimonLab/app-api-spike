defmodule AppApiWeb.AuthUrl do
  use AppApiWeb, :controller

  def index(conn, _params) do
    urls = [%{url: "google url auth"}, %{url: "github url oauth"}]
    render(conn, "index.json", urls: urls)
  end
end
