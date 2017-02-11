defmodule Rumbl.WatchView do
    use Rumbl.Web, :view

    def player_id(video) do
        ~r{^.*(?:youtu\.be/|\w+/|v=)(?<id>[^#&?]*)}
        |> Regex.named_captures(video_url)
        |> get_in(["id"])
    end
end
