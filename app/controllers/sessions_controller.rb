class SessionsController < ApplicationController

    def new
    end

    def create #is user name is nil or blank, redirect back to login
        if params[:name] == nil || params[:name].empty?
            redirect_to '/login'
        else #calls current user to set name to given name
            set_current_user
        end
    end

    def show # if the user access the ahow page without logging in, redirect to login
        if !set_current_user
            redirect_to login_path
        else
        end
    end

    def set_current_user #sets given params to session
        session[:name] = params[:name]
        redirect_to '/'
    end

    def destroy
        if session[:name]!= nil
            session.destroy
        end
    end


end