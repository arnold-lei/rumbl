defmodule Rumbl.VideoControllerTest do
    use Rumbl.ConnCase

    test "requires user authentication on all actions" do
        Enum.each([
            get(build_conn, video_path(build_conn, :new)),
            get(build_conn, video_path(build_conn, :index)),
            get(build_conn, video_path(build_conn, :show, "123")),
            get(build_conn, video_path(build_conn, :edit, "123")),
            put(build_conn, video_path(build_conn, :update, "123", %{})),
            post(build_conn, video_path(build_conn, :create, %{})),
            delete(build_conn, video_path(build_conn, :delete, "123")),
        ], fn conn ->
            assert html_response(conn, 302)
            assert conn.halted
        end)
    end
end
