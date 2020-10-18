class ApplicationController < ActionController::API
    def index
        @icons = Icon.all 
        render json: @icons
    end 
    
end
