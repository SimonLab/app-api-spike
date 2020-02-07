defmodule AppApiWeb.GoogleAuthController do
  use AppApiWeb, :controller

  @doc """
  `index/2` handles the callback from Google Auth API redirect.
  """
  def index(conn, %{"code" => code}) do
    {:ok, token} = ElixirAuthGoogle.get_token(code, conn)
    {:ok, profile} = ElixirAuthGoogle.get_user_profile(token.access_token)
    # Create auth token from profile email
    # Create session
    render(conn, "index.json", profile: profile)
  end
end
