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

    setup do
        user = insert_user(username: "max")
        conn = assign(conn(), :current_user, user)
        {:ok, conn: user: user}
    end

    test "List all user's videos on index", %{conn: conn, user: user} do
        user_video = insert_video(user, title: "funny cats")
        other_vide = insert_video(insert_user(username: "other"), title: "another video")
    end


end
