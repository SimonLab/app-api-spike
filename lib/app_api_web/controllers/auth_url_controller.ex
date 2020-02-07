defmodule AppApiWeb.AuthUrlController do
  use AppApiWeb, :controller

  def index(conn, _params) do
    google_url = ElixirAuthGoogle.generate_oauth_url(conn)
    urls = [%{url: google_url}, %{url: "github url oauth"}]
    render(conn, "index.json", urls: urls)
  end
end
