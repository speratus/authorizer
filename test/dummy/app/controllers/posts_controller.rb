class PostsController < ApplicationController

    def show
        post = check_authorization(Post.find_by(id: params[:id]), current_user)
        render json: post
    end

    private

    def current_user
        user = User.find_by(id: request.headers['xUser-Id'])
    end
end
