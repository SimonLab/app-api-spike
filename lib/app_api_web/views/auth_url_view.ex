defmodule AppApiWeb.AuthUrlView do
  use AppApiWeb, :view
  alias AppApiWeb.AuthUrlView

  def render("index.json", %{urls: urls}) do
    data = Enum.map(urls, fn url -> render("url.json", url) end)
    %{data: data}
  end

  def render("url.json", %{url: url}) do
    %{url: url}
  end
end
