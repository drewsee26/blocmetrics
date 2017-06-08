class RegisteredApplicationsController < ApplicationController
    def index
        @regapps = RegisteredApplication.all  
    end
    
    def new
        @regapp = RegisteredApplication.new
    end
    
    def create
        @regapp = RegisteredApplication.new(reg_app_params)
        
        if @regapp.save
            flash[:notice] = "Application was saved."
            redirect_to @regapp
        else
            flash.now[:alert] = "There was an error saving the application.  Please try again."
            render :new
        end
    end
    
    def show
        @regapp = RegisteredApplication.find(params[:id])
    end
    
    def destroy
    end
    
    private 
    
    def reg_app_params
        params.require(:regapp).permit(:name, :url)
    end
end
