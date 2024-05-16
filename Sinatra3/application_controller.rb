require ./config/environment

class ApplicationController <Sinatra::Base

    get '/' do
        erb :index
    end

    helpers do
        def redirect_if_not_logged_in
            if !logged_in?
                redirect "/login?error=You have to logged in to do that"
            end
        end
    end
    
end


