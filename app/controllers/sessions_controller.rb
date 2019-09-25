class SessionsController < ApplicationController
    def new
    end

    def show
    end

    def create
        session[:name] = params[:name]
        if session[:name] && session[:name] != ""
            render :show
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.delete :name
    end
end