defmodule AppApiWeb.AuthUrlController do
  use AppApiWeb, :controller

  def index(conn, _params) do
    google_url = ElixirAuthGoogle.generate_oauth_url(conn)
    github_url = ElixirAuthGithub.login_url_with_scope(["user:email"])
    urls = [%{url: google_url}, %{url: github_url}]
    render(conn, "index.json", urls: urls)
  end
end
