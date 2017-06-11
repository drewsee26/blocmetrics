class RegisteredApplicationsController < ApplicationController
    def index
        @regapps = RegisteredApplication.all  
    end
    
    def show
        @regapp = RegisteredApplication.find(params[:id])
        
        @events = @regapp.events.group_by(&:name)
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
    
    def destroy
        @regapp = RegisteredApplication.find(params[:id])
        
        if @regapp.destroy
            flash[:notice] = "\"#{@regapp.name}\" was deleted successfully."
            redirect_to registered_applications_path
        else
            flash.now[:alert] = "There was an error deleting this application."
            render :show
        end
    end
    
    private 
    
    def reg_app_params
        params.require(:registered_application).permit(:name, :url)
    end
end
