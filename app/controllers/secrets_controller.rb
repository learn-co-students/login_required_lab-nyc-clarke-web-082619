class SecretsController < ApplicationController

    def show
        if current_user != nil
            render :show
        else
            redirect_to controller: 'sessions', action: 'new'
        end
    end


end
