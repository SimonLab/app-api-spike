defmodule AppApiWeb.GithubAuthController do
  use AppApiWeb, :controller

  @doc """
  `index/2` handles the callback from GitHub Auth API redirect.
  """
  def index(conn, %{"code" => code}) do
    {:ok, profile} = ElixirAuthGithub.github_auth(code)
    render(conn, "index.json", profile: profile)
  end
end
