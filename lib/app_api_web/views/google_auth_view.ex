defmodule AppApiWeb.GoogleAuthView do
  use AppApiWeb, :view

  def render("index.json", %{profile: profile}) do
    %{data: profile}
  end
end
